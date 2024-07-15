import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/allocate_to/allocate_to_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'sample_h_ive_widget.dart' show SampleHIveWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SampleHIveModel extends FlutterFlowModel<SampleHIveWidget> {
  ///  Local state fields for this page.

  List<ItemFlowStruct> listRefresh = [];
  void addToListRefresh(ItemFlowStruct item) => listRefresh.add(item);
  void removeFromListRefresh(ItemFlowStruct item) => listRefresh.remove(item);
  void removeAtIndexFromListRefresh(int index) => listRefresh.removeAt(index);
  void insertAtIndexInListRefresh(int index, ItemFlowStruct item) =>
      listRefresh.insert(index, item);
  void updateListRefreshAtIndex(int index, Function(ItemFlowStruct) updateFn) =>
      listRefresh[index] = updateFn(listRefresh[index]);

  int dataContainerHeight = 400;

  int listViewHeight = 399;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getCustomer)] action in SampleHIve widget.
  ApiCallResponse? apiResulti58;
  // Stores action output result for [Backend Call - API (leadsAuthorityOtherCategory)] action in SampleHIve widget.
  ApiCallResponse? leads;
  // Stores action output result for [Backend Call - API (getAuthority)] action in SampleHIve widget.
  ApiCallResponse? apiResultngz;
  // Stores action output result for [Backend Call - API (getMapImage)] action in SampleHIve widget.
  ApiCallResponse? apiResultyio;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<ItemFlowStruct>();
  // Stores action output result for [Custom Action - getItemDetail] action in IconButton widget.
  UserStruct? resultOfGetItemDetail;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
