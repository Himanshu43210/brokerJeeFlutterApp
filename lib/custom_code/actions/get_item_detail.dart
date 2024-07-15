// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// ignore_for_file: unused_local_variable

import 'package:hive_flutter/hive_flutter.dart';
import '/custom_code/actions/setup_item_hive.dart';

Future<UserStruct> getItemDetail(int? key) async {
  await itemBox;
  var dataitem = itemBox;
  // print('here is the item detail');
  // print(dataitem.get(key));

  final item = itemBox.get(key);
  var capturedKey = key;
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

  UserStruct itemPreConvert = UserStruct(
    hiveKey: capturedKey ?? 9999,
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
  // print(itemPreConvert);
  return itemPreConvert;
  // Add your function code here!
}
