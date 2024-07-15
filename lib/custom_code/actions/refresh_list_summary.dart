// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:hive_flutter/hive_flutter.dart';
import 'setup_item_hive.dart';

//  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  This custom action inspects the 'item' box in order to pull out the items into a list
//  understand that 'i' below indicates the position in the list of items in the box where
//  the first item is always 0
//  what we need to get are the 'hive keys' which are autoincremented with every new item
//  that is inserted into the hive box 'items'.  hive keys increment from 0 to 1 to 2 ...
//  and the are the key that matches the value of the item which in this case are of type <Item>
//  so the key: value is an integer: class-map relationship.  If the item with hive key = 2 is
//  deleted, the keys remaining are 0, 1, 3, 4, ...  while the 'i' positions in the list still
//  show up as 0,1,2,3....
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Future<List<ItemFlowStruct>?> refreshListSummary(BuildContext context) async {
  await itemBox;
  // ******* debugging *************
  // print('itemBox is open? ');
  // var question = itemBox.isOpen;
  // print(question);

  //how many items are in the hive box?
  final int boxcount = itemBox.length;
  // ******* debugging *************
  // print('this is how many items are in the Hive box:  $boxcount');
  // print('begin iloop');
  // print('itemBox keys follow');
  // print(itemBox.keys);

  List<ItemFlowStruct> itemFlowConverted = [];

  // for loop through the box and convert each item to <Item> datatype then into a list of <Item> datatypes
  for (int i = 0; i < boxcount; i++) {
    // print('current position in hive box i is: $i');
    final int key = itemBox.keyAt(i);
    // print('the is the keyAt value: ');
    // print(key);
    final item = itemBox.getAt(i);
    // print(item);
    var capturedProjectName = item.projectName;
    var capturedLocation = item.location;
    var capturedApartmentNumber = item.apartmentNumber;
    var capturedSize = item.size;
    var capturedDemand = item.demand;
    var capturedOffer = item.offer;
    var capturedRentDemandMonthly = item.rentDemandMonthly;
    var capturedInterested = item.interested;
    var capturedCheque = item.cheque;
    var capturedFloor = item.floor;
    var capturedTower = item.tower;
    var capturedRemarks = item.remarks;
    var capturedName = item.name;
    var capturedContact = item.contact;
    var capturedCreatedBy = item.createdBy;

    ItemFlowStruct itemPreConvert = ItemFlowStruct(
      id: key ?? 9999,
      projectName: capturedProjectName ?? '',
      location: capturedLocation ?? '',
      apartmentNumber: capturedApartmentNumber ?? '',
      size: capturedSize ?? '',
      demand: capturedDemand ?? '',
      offer: capturedOffer ?? '',
      rentDemandMonthly: capturedRentDemandMonthly ?? '',
      interested: capturedInterested ?? '',
      cheque: capturedCheque ?? '',
      floor: capturedFloor ?? '',
      tower: capturedTower ?? '',
      remarks: capturedRemarks ?? '',
      name: capturedName ?? '',
      contact: capturedContact ?? '',
      createdBy: capturedCreatedBy ?? '',
    ); // if key is somehow null, it gets the id number 9999

    //print('here is your prior to being added to the list of items $itemPreConvert');
    itemFlowConverted.add(itemPreConvert);
  } // end for loop

  // this MAKES the most recent ITEM on top OF THE LIST PAGE...using 'reversed'
  itemFlowConverted = itemFlowConverted.reversed.toList();
  // print('This is the list converted for Struct use $itemFlowConverted');

  return itemFlowConverted;
} // end async
