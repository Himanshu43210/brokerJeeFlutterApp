import '/backend/api_requests/api_calls.dart';
import '/components/upload_locations/upload_locations_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'upload_location_new_widget.dart' show UploadLocationNewWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadLocationNewModel extends FlutterFlowModel<UploadLocationNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (mlGetAllProperty)] action in Button widget.
  ApiCallResponse? apiResultapp;
  // Stores action output result for [Backend Call - API (mlGetAllProperty)] action in Button widget.
  ApiCallResponse? apiResultcuy;
  // Stores action output result for [Backend Call - API (mlGetAllProperty)] action in Button widget.
  ApiCallResponse? apiResultflat;
  // Stores action output result for [Backend Call - API (mlGetAllProperty)] action in Button widget.
  ApiCallResponse? apiResultfloor;
  // Stores action output result for [Backend Call - API (mlGetAllProperty)] action in Button widget.
  ApiCallResponse? apiResultInd;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController5 =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
