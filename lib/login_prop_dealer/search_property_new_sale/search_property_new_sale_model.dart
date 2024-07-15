import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'search_property_new_sale_widget.dart' show SearchPropertyNewSaleWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchPropertyNewSaleModel
    extends FlutterFlowModel<SearchPropertyNewSaleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getMasterData)] action in SearchPropertyNewSale widget.
  ApiCallResponse? properties;
  // Stores action output result for [Backend Call - API (getMasterData)] action in SearchPropertyNewSale widget.
  ApiCallResponse? apiResultery;
  // State field(s) for Category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // Stores action output result for [Backend Call - API (searchLeadLocation)] action in Category widget.
  ApiCallResponse? apart;
  // Stores action output result for [Backend Call - API (searchLeadLocation)] action in Category widget.
  ApiCallResponse? flat;
  // Stores action output result for [Backend Call - API (searchLeadLocation)] action in Category widget.
  ApiCallResponse? plotindustrial;
  // State field(s) for State widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for City widget.
  String? cityValue;
  FormFieldController<String>? cityValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Backend Call - API (searchLeadLocation)] action in DropDown widget.
  ApiCallResponse? apartment;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for SubCategoryComm widget.
  String? subCategoryCommValue;
  FormFieldController<String>? subCategoryCommValueController;
  // Stores action output result for [Backend Call - API (searchLeadLocationSub)] action in SubCategoryComm widget.
  ApiCallResponse? sublocation;
  // State field(s) for SubCategoryLand widget.
  String? subCategoryLandValue;
  FormFieldController<String>? subCategoryLandValueController;
  // Stores action output result for [Backend Call - API (searchLeadLocation)] action in SubCategoryLand widget.
  ApiCallResponse? land;
  // State field(s) for SubCategoryInstitutional widget.
  String? subCategoryInstitutionalValue;
  FormFieldController<String>? subCategoryInstitutionalValueController;
  // Stores action output result for [Backend Call - API (searchLeadLocationSub)] action in SubCategoryInstitutional widget.
  ApiCallResponse? institute;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Stores action output result for [Backend Call - API (searchLeadPlotNumber)] action in DropDown widget.
  ApiCallResponse? plotNumber;
  // Stores action output result for [Backend Call - API (searchLeadPlotNumber)] action in DropDown widget.
  ApiCallResponse? apiResultykr;
  // Stores action output result for [Backend Call - API (searchLeadPlotNumber)] action in DropDown widget.
  ApiCallResponse? plotNumberCopy;
  // Stores action output result for [Backend Call - API (searchLeadPlotNumber)] action in DropDown widget.
  ApiCallResponse? apiResultykrCopy;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  final textFieldKey4 = GlobalKey();
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? textFieldSelectedOption4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  final textFieldKey5 = GlobalKey();
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? textFieldSelectedOption5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  final textFieldKey6 = GlobalKey();
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? textFieldSelectedOption6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  final textFieldKey7 = GlobalKey();
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? textFieldSelectedOption7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for PlotSize widget.
  String? plotSizeValue;
  FormFieldController<String>? plotSizeValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for ShopSize widget.
  String? shopSizeValue;
  FormFieldController<String>? shopSizeValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode12;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode13;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for UnitSize widget.
  String? unitSizeValue;
  FormFieldController<String>? unitSizeValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode14;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode15;
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for Area widget.
  String? areaValue;
  FormFieldController<String>? areaValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode16;
  TextEditingController? textController16;
  String? Function(BuildContext, String?)? textController16Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode17;
  TextEditingController? textController17;
  String? Function(BuildContext, String?)? textController17Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode18;
  TextEditingController? textController18;
  String? Function(BuildContext, String?)? textController18Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode19;
  TextEditingController? textController19;
  String? Function(BuildContext, String?)? textController19Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode20;
  TextEditingController? textController20;
  String? Function(BuildContext, String?)? textController20Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for PlotBuiltup widget.
  String? plotBuiltupValue;
  FormFieldController<String>? plotBuiltupValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Floor widget.
  String? floorValue;
  FormFieldController<String>? floorValueController;
  // State field(s) for TextField widget.
  final textFieldKey21 = GlobalKey();
  FocusNode? textFieldFocusNode21;
  TextEditingController? textController21;
  String? textFieldSelectedOption21;
  String? Function(BuildContext, String?)? textController21Validator;
  // State field(s) for RoadWidth widget.
  String? roadWidthValue;
  FormFieldController<String>? roadWidthValueController;
  // State field(s) for Direction widget.
  String? directionValue;
  FormFieldController<String>? directionValueController;
  // State field(s) for SubCategoryFloor widget.
  String? subCategoryFloorValue;
  FormFieldController<String>? subCategoryFloorValueController;
  // State field(s) for FloorSub widget.
  String? floorSubValue1;
  FormFieldController<String>? floorSubValueController1;
  // State field(s) for FloorSub widget.
  String? floorSubValue2;
  FormFieldController<String>? floorSubValueController2;
  // State field(s) for FloorSub widget.
  String? floorSubValue3;
  FormFieldController<String>? floorSubValueController3;
  // State field(s) for FloorSub widget.
  String? floorSubValue4;
  FormFieldController<String>? floorSubValueController4;
  // State field(s) for Accomodation widget.
  String? accomodationValue;
  FormFieldController<String>? accomodationValueController;
  // State field(s) for Status widget.
  String? statusValue;
  FormFieldController<String>? statusValueController;
  // State field(s) for Cheque widget.
  String? chequeValue;
  FormFieldController<String>? chequeValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();

    textFieldFocusNode2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();

    textFieldFocusNode5?.dispose();

    textFieldFocusNode6?.dispose();

    textFieldFocusNode7?.dispose();

    textFieldFocusNode8?.dispose();
    textController8?.dispose();

    textFieldFocusNode9?.dispose();
    textController9?.dispose();

    textFieldFocusNode10?.dispose();
    textController10?.dispose();

    textFieldFocusNode11?.dispose();
    textController11?.dispose();

    textFieldFocusNode12?.dispose();
    textController12?.dispose();

    textFieldFocusNode13?.dispose();
    textController13?.dispose();

    textFieldFocusNode14?.dispose();
    textController14?.dispose();

    textFieldFocusNode15?.dispose();
    textController15?.dispose();

    textFieldFocusNode16?.dispose();
    textController16?.dispose();

    textFieldFocusNode17?.dispose();
    textController17?.dispose();

    textFieldFocusNode18?.dispose();
    textController18?.dispose();

    textFieldFocusNode19?.dispose();
    textController19?.dispose();

    textFieldFocusNode20?.dispose();
    textController20?.dispose();

    textFieldFocusNode21?.dispose();
  }
}
