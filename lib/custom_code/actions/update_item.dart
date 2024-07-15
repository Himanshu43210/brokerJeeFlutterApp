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
import '/custom_code/actions/setup_item_hive.dart';

Future updateItem(
  String? projectName,
  String? location,
  String? apartmentNumber,
  String? size,
  String? demand,
  String? offer,
  String? rentDemandMonthly,
  String? interested,
  String? cheque,
  String? floor,
  String? tower,
  String? remarks,
  String? name,
  String? contact,
  String? createdBy,
  int? hiveKey,
) async {
  itemBox = await Hive.openBox<Item>('items');
  // print('itemBox is open? ');
  // ignore: unused_local_variable
  var question = itemBox.isOpen;
  // print(question);
  projectName = projectName ?? '';
  location = location ?? '';
  apartmentNumber = apartmentNumber ?? '';
  size = size ?? '';
  demand = demand ?? '';
  offer = offer ?? '';
  rentDemandMonthly = rentDemandMonthly ?? '';
  interested = interested ?? '';
  cheque = cheque ?? '';
  floor = floor ?? '';
  tower = tower ?? '';
  remarks = remarks ?? '';
  name = name ?? '';
  contact = contact ?? '';
  createdBy = createdBy ?? '';
  hiveKey = hiveKey ?? 9999;

  // print(itemBox.keys); //should say null?
  // print(itemBox.values); // actually returned open parenths '()', but

  // add the new item into the Hive box
  itemBox.put(
      hiveKey,
      Item(
          projectName,
          location,
          apartmentNumber,
          size,
          demand,
          offer,
          rentDemandMonthly,
          interested,
          cheque,
          floor,
          tower,
          remarks,
          name,
          contact,
          createdBy));
}
