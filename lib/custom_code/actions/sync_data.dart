// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:hive/hive.dart';

Future<void> syncData() async {
  final response =
      await http.get(Uri.parse('https://api.npoint.io/12bdc5080a6c47d3f990'));
  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final dataBox = Hive.box('dataBox');
    await dataBox.put('dataKey', jsonData['leads']);
  } else {
    throw Exception('Failed to load data');
  }
}
