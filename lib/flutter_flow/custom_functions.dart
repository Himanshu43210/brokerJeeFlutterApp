import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

dynamic parseCategories(
  dynamic jsonString,
  String categoryKey,
) {
  // $[?(@.projectName=='Puri Emerald Bay')].apartmentNumber[:] in this JSON path. I need to pass the value of projectName through a variable.in this "Puri Emerald Bay" comes from categoryKey variables and this variable is a list of string.
  final List<dynamic> apartments = jsonString
      .where((item) => item['projectName'] == categoryKey)
      .expand((item) => item['apartmentNumber'] as List<dynamic>)
      .toList();
  return apartments;
}

List<dynamic> parseCategoriesCopy(
  String jsonString,
  String categoryKey,
) {
  // $.data[?(@.projectName=='Puri Emerald Bay')].apartmentNumber[:] in this JSON path. I need to pass the value of projectName through a variable.
  final Map<String, dynamic> data = jsonDecode(jsonString);
  final String projectName = categoryKey;
  final List<dynamic> apartments = data['data']
      .where((item) => item['projectName'] == projectName)
      .map((item) => item['size'])
      .toList();
  return apartments;
}
