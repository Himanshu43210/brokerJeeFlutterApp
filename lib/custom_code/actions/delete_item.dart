// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// need to get hive dependencies
//import 'package:hive/hive.dart';  removed hive: ^2.2.3
import 'package:hive_flutter/hive_flutter.dart';
import 'setup_item_hive.dart';

Future deleteItem(int hiveID) async {
  // print('here is the id $hiveID');
  await itemBox.delete(hiveID);
  // Add your function code here!
}
