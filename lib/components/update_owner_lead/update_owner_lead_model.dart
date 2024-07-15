import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_owner_lead_widget.dart' show UpdateOwnerLeadWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateOwnerLeadModel extends FlutterFlowModel<UpdateOwnerLeadWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for SubCategoryComercial widget.
  String? subCategoryComercialValue;
  FormFieldController<String>? subCategoryComercialValueController;
  // State field(s) for SubCategoryInstitutional widget.
  String? subCategoryInstitutionalValue;
  FormFieldController<String>? subCategoryInstitutionalValueController;
  // State field(s) for SubCategoryLand widget.
  String? subCategoryLandValue;
  FormFieldController<String>? subCategoryLandValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode12;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode13;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode14;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode15;
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode21;
  TextEditingController? textController21;
  String? Function(BuildContext, String?)? textController21Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode22;
  TextEditingController? textController22;
  String? Function(BuildContext, String?)? textController22Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode23;
  TextEditingController? textController23;
  String? Function(BuildContext, String?)? textController23Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode24;
  TextEditingController? textController24;
  String? Function(BuildContext, String?)? textController24Validator;
  // State field(s) for Size widget.
  String? sizeValue;
  FormFieldController<String>? sizeValueController;
  // State field(s) for PlotBuiltup widget.
  String? plotBuiltupValue;
  FormFieldController<String>? plotBuiltupValueController;
  // State field(s) for BuiltupStatus widget.
  String? builtupStatusValue;
  FormFieldController<String>? builtupStatusValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode25;
  TextEditingController? textController25;
  String? Function(BuildContext, String?)? textController25Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode26;
  TextEditingController? textController26;
  String? Function(BuildContext, String?)? textController26Validator;
  // State field(s) for Usage widget.
  String? usageValue;
  FormFieldController<String>? usageValueController;
  // State field(s) for Features widget.
  String? featuresValue;
  FormFieldController<String>? featuresValueController;
  // State field(s) for CLUStatus widget.
  String? cLUStatusValue;
  FormFieldController<String>? cLUStatusValueController;
  // State field(s) for Floor widget.
  String? floorValue;
  FormFieldController<String>? floorValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode27;
  TextEditingController? textController27;
  String? Function(BuildContext, String?)? textController27Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode28;
  TextEditingController? textController28;
  String? Function(BuildContext, String?)? textController28Validator;
  // State field(s) for Interested widget.
  String? interestedValue1;
  FormFieldController<String>? interestedValueController1;
  // State field(s) for Cheque widget.
  String? chequeValue1;
  FormFieldController<String>? chequeValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode29;
  TextEditingController? textController29;
  String? Function(BuildContext, String?)? textController29Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode30;
  TextEditingController? textController30;
  String? Function(BuildContext, String?)? textController30Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController1;
  List<String>? get checkboxGroupValues1 =>
      checkboxGroupValueController1?.value;
  set checkboxGroupValues1(List<String>? v) =>
      checkboxGroupValueController1?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode31;
  TextEditingController? textController31;
  String? Function(BuildContext, String?)? textController31Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode32;
  TextEditingController? textController32;
  String? Function(BuildContext, String?)? textController32Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode33;
  TextEditingController? textController33;
  String? Function(BuildContext, String?)? textController33Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController2;
  List<String>? get checkboxGroupValues2 =>
      checkboxGroupValueController2?.value;
  set checkboxGroupValues2(List<String>? v) =>
      checkboxGroupValueController2?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode34;
  TextEditingController? textController34;
  String? Function(BuildContext, String?)? textController34Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode35;
  TextEditingController? textController35;
  String? Function(BuildContext, String?)? textController35Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode36;
  TextEditingController? textController36;
  String? Function(BuildContext, String?)? textController36Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode37;
  TextEditingController? textController37;
  String? Function(BuildContext, String?)? textController37Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode38;
  TextEditingController? textController38;
  String? Function(BuildContext, String?)? textController38Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode39;
  TextEditingController? textController39;
  String? Function(BuildContext, String?)? textController39Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController3;
  List<String>? get checkboxGroupValues3 =>
      checkboxGroupValueController3?.value;
  set checkboxGroupValues3(List<String>? v) =>
      checkboxGroupValueController3?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode40;
  TextEditingController? textController40;
  String? Function(BuildContext, String?)? textController40Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode41;
  TextEditingController? textController41;
  String? Function(BuildContext, String?)? textController41Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode42;
  TextEditingController? textController42;
  String? Function(BuildContext, String?)? textController42Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode43;
  TextEditingController? textController43;
  String? Function(BuildContext, String?)? textController43Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode44;
  TextEditingController? textController44;
  String? Function(BuildContext, String?)? textController44Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode45;
  TextEditingController? textController45;
  String? Function(BuildContext, String?)? textController45Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController4;
  List<String>? get checkboxGroupValues4 =>
      checkboxGroupValueController4?.value;
  set checkboxGroupValues4(List<String>? v) =>
      checkboxGroupValueController4?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode46;
  TextEditingController? textController46;
  String? Function(BuildContext, String?)? textController46Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode47;
  TextEditingController? textController47;
  String? Function(BuildContext, String?)? textController47Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode48;
  TextEditingController? textController48;
  String? Function(BuildContext, String?)? textController48Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode49;
  TextEditingController? textController49;
  String? Function(BuildContext, String?)? textController49Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode50;
  TextEditingController? textController50;
  String? Function(BuildContext, String?)? textController50Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode51;
  TextEditingController? textController51;
  String? Function(BuildContext, String?)? textController51Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController5;
  List<String>? get checkboxGroupValues5 =>
      checkboxGroupValueController5?.value;
  set checkboxGroupValues5(List<String>? v) =>
      checkboxGroupValueController5?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode52;
  TextEditingController? textController52;
  String? Function(BuildContext, String?)? textController52Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode53;
  TextEditingController? textController53;
  String? Function(BuildContext, String?)? textController53Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode54;
  TextEditingController? textController54;
  String? Function(BuildContext, String?)? textController54Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode55;
  TextEditingController? textController55;
  String? Function(BuildContext, String?)? textController55Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode56;
  TextEditingController? textController56;
  String? Function(BuildContext, String?)? textController56Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode57;
  TextEditingController? textController57;
  String? Function(BuildContext, String?)? textController57Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController6;
  List<String>? get checkboxGroupValues6 =>
      checkboxGroupValueController6?.value;
  set checkboxGroupValues6(List<String>? v) =>
      checkboxGroupValueController6?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode58;
  TextEditingController? textController58;
  String? Function(BuildContext, String?)? textController58Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode59;
  TextEditingController? textController59;
  String? Function(BuildContext, String?)? textController59Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode60;
  TextEditingController? textController60;
  String? Function(BuildContext, String?)? textController60Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode61;
  TextEditingController? textController61;
  String? Function(BuildContext, String?)? textController61Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode62;
  TextEditingController? textController62;
  String? Function(BuildContext, String?)? textController62Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode63;
  TextEditingController? textController63;
  String? Function(BuildContext, String?)? textController63Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController7;
  List<String>? get checkboxGroupValues7 =>
      checkboxGroupValueController7?.value;
  set checkboxGroupValues7(List<String>? v) =>
      checkboxGroupValueController7?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode64;
  TextEditingController? textController64;
  String? Function(BuildContext, String?)? textController64Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode65;
  TextEditingController? textController65;
  String? Function(BuildContext, String?)? textController65Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode66;
  TextEditingController? textController66;
  String? Function(BuildContext, String?)? textController66Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode67;
  TextEditingController? textController67;
  String? Function(BuildContext, String?)? textController67Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode68;
  TextEditingController? textController68;
  String? Function(BuildContext, String?)? textController68Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode69;
  TextEditingController? textController69;
  String? Function(BuildContext, String?)? textController69Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController8;
  List<String>? get checkboxGroupValues8 =>
      checkboxGroupValueController8?.value;
  set checkboxGroupValues8(List<String>? v) =>
      checkboxGroupValueController8?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode70;
  TextEditingController? textController70;
  String? Function(BuildContext, String?)? textController70Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode71;
  TextEditingController? textController71;
  String? Function(BuildContext, String?)? textController71Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode72;
  TextEditingController? textController72;
  String? Function(BuildContext, String?)? textController72Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode73;
  TextEditingController? textController73;
  String? Function(BuildContext, String?)? textController73Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode74;
  TextEditingController? textController74;
  String? Function(BuildContext, String?)? textController74Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode75;
  TextEditingController? textController75;
  String? Function(BuildContext, String?)? textController75Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController9;
  List<String>? get checkboxGroupValues9 =>
      checkboxGroupValueController9?.value;
  set checkboxGroupValues9(List<String>? v) =>
      checkboxGroupValueController9?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode76;
  TextEditingController? textController76;
  String? Function(BuildContext, String?)? textController76Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode77;
  TextEditingController? textController77;
  String? Function(BuildContext, String?)? textController77Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode78;
  TextEditingController? textController78;
  String? Function(BuildContext, String?)? textController78Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode79;
  TextEditingController? textController79;
  String? Function(BuildContext, String?)? textController79Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode80;
  TextEditingController? textController80;
  String? Function(BuildContext, String?)? textController80Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode81;
  TextEditingController? textController81;
  String? Function(BuildContext, String?)? textController81Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController10;
  List<String>? get checkboxGroupValues10 =>
      checkboxGroupValueController10?.value;
  set checkboxGroupValues10(List<String>? v) =>
      checkboxGroupValueController10?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode82;
  TextEditingController? textController82;
  String? Function(BuildContext, String?)? textController82Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode83;
  TextEditingController? textController83;
  String? Function(BuildContext, String?)? textController83Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode84;
  TextEditingController? textController84;
  String? Function(BuildContext, String?)? textController84Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode85;
  TextEditingController? textController85;
  String? Function(BuildContext, String?)? textController85Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode86;
  TextEditingController? textController86;
  String? Function(BuildContext, String?)? textController86Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode87;
  TextEditingController? textController87;
  String? Function(BuildContext, String?)? textController87Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController11;
  List<String>? get checkboxGroupValues11 =>
      checkboxGroupValueController11?.value;
  set checkboxGroupValues11(List<String>? v) =>
      checkboxGroupValueController11?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode88;
  TextEditingController? textController88;
  String? Function(BuildContext, String?)? textController88Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode89;
  TextEditingController? textController89;
  String? Function(BuildContext, String?)? textController89Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode90;
  TextEditingController? textController90;
  String? Function(BuildContext, String?)? textController90Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode91;
  TextEditingController? textController91;
  String? Function(BuildContext, String?)? textController91Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode92;
  TextEditingController? textController92;
  String? Function(BuildContext, String?)? textController92Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode93;
  TextEditingController? textController93;
  String? Function(BuildContext, String?)? textController93Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController12;
  List<String>? get checkboxGroupValues12 =>
      checkboxGroupValueController12?.value;
  set checkboxGroupValues12(List<String>? v) =>
      checkboxGroupValueController12?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode94;
  TextEditingController? textController94;
  String? Function(BuildContext, String?)? textController94Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode95;
  TextEditingController? textController95;
  String? Function(BuildContext, String?)? textController95Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode96;
  TextEditingController? textController96;
  String? Function(BuildContext, String?)? textController96Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode97;
  TextEditingController? textController97;
  String? Function(BuildContext, String?)? textController97Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode98;
  TextEditingController? textController98;
  String? Function(BuildContext, String?)? textController98Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode99;
  TextEditingController? textController99;
  String? Function(BuildContext, String?)? textController99Validator;
  // State field(s) for Accomodation widget.
  String? accomodationValue;
  FormFieldController<String>? accomodationValueController;
  // State field(s) for Status widget.
  String? statusValue;
  FormFieldController<String>? statusValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode100;
  TextEditingController? textController100;
  String? Function(BuildContext, String?)? textController100Validator;
  // State field(s) for Interested widget.
  String? interestedValue2;
  FormFieldController<String>? interestedValueController2;
  // State field(s) for Cheque widget.
  String? chequeValue2;
  FormFieldController<String>? chequeValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode101;
  TextEditingController? textController101;
  String? Function(BuildContext, String?)? textController101Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode102;
  TextEditingController? textController102;
  String? Function(BuildContext, String?)? textController102Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController13;
  List<String>? get checkboxGroupValues13 =>
      checkboxGroupValueController13?.value;
  set checkboxGroupValues13(List<String>? v) =>
      checkboxGroupValueController13?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode103;
  TextEditingController? textController103;
  String? Function(BuildContext, String?)? textController103Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode104;
  TextEditingController? textController104;
  String? Function(BuildContext, String?)? textController104Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode105;
  TextEditingController? textController105;
  String? Function(BuildContext, String?)? textController105Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode106;
  TextEditingController? textController106;
  String? Function(BuildContext, String?)? textController106Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode107;
  TextEditingController? textController107;
  String? Function(BuildContext, String?)? textController107Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode108;
  TextEditingController? textController108;
  String? Function(BuildContext, String?)? textController108Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode109;
  TextEditingController? textController109;
  String? Function(BuildContext, String?)? textController109Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode110;
  TextEditingController? textController110;
  String? Function(BuildContext, String?)? textController110Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode111;
  TextEditingController? textController111;
  String? Function(BuildContext, String?)? textController111Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode112;
  TextEditingController? textController112;
  String? Function(BuildContext, String?)? textController112Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode113;
  TextEditingController? textController113;
  String? Function(BuildContext, String?)? textController113Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode114;
  TextEditingController? textController114;
  String? Function(BuildContext, String?)? textController114Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode115;
  TextEditingController? textController115;
  String? Function(BuildContext, String?)? textController115Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

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
    textController21?.dispose();

    textFieldFocusNode22?.dispose();
    textController22?.dispose();

    textFieldFocusNode23?.dispose();
    textController23?.dispose();

    textFieldFocusNode24?.dispose();
    textController24?.dispose();

    textFieldFocusNode25?.dispose();
    textController25?.dispose();

    textFieldFocusNode26?.dispose();
    textController26?.dispose();

    textFieldFocusNode27?.dispose();
    textController27?.dispose();

    textFieldFocusNode28?.dispose();
    textController28?.dispose();

    textFieldFocusNode29?.dispose();
    textController29?.dispose();

    textFieldFocusNode30?.dispose();
    textController30?.dispose();

    textFieldFocusNode31?.dispose();
    textController31?.dispose();

    textFieldFocusNode32?.dispose();
    textController32?.dispose();

    textFieldFocusNode33?.dispose();
    textController33?.dispose();

    textFieldFocusNode34?.dispose();
    textController34?.dispose();

    textFieldFocusNode35?.dispose();
    textController35?.dispose();

    textFieldFocusNode36?.dispose();
    textController36?.dispose();

    textFieldFocusNode37?.dispose();
    textController37?.dispose();

    textFieldFocusNode38?.dispose();
    textController38?.dispose();

    textFieldFocusNode39?.dispose();
    textController39?.dispose();

    textFieldFocusNode40?.dispose();
    textController40?.dispose();

    textFieldFocusNode41?.dispose();
    textController41?.dispose();

    textFieldFocusNode42?.dispose();
    textController42?.dispose();

    textFieldFocusNode43?.dispose();
    textController43?.dispose();

    textFieldFocusNode44?.dispose();
    textController44?.dispose();

    textFieldFocusNode45?.dispose();
    textController45?.dispose();

    textFieldFocusNode46?.dispose();
    textController46?.dispose();

    textFieldFocusNode47?.dispose();
    textController47?.dispose();

    textFieldFocusNode48?.dispose();
    textController48?.dispose();

    textFieldFocusNode49?.dispose();
    textController49?.dispose();

    textFieldFocusNode50?.dispose();
    textController50?.dispose();

    textFieldFocusNode51?.dispose();
    textController51?.dispose();

    textFieldFocusNode52?.dispose();
    textController52?.dispose();

    textFieldFocusNode53?.dispose();
    textController53?.dispose();

    textFieldFocusNode54?.dispose();
    textController54?.dispose();

    textFieldFocusNode55?.dispose();
    textController55?.dispose();

    textFieldFocusNode56?.dispose();
    textController56?.dispose();

    textFieldFocusNode57?.dispose();
    textController57?.dispose();

    textFieldFocusNode58?.dispose();
    textController58?.dispose();

    textFieldFocusNode59?.dispose();
    textController59?.dispose();

    textFieldFocusNode60?.dispose();
    textController60?.dispose();

    textFieldFocusNode61?.dispose();
    textController61?.dispose();

    textFieldFocusNode62?.dispose();
    textController62?.dispose();

    textFieldFocusNode63?.dispose();
    textController63?.dispose();

    textFieldFocusNode64?.dispose();
    textController64?.dispose();

    textFieldFocusNode65?.dispose();
    textController65?.dispose();

    textFieldFocusNode66?.dispose();
    textController66?.dispose();

    textFieldFocusNode67?.dispose();
    textController67?.dispose();

    textFieldFocusNode68?.dispose();
    textController68?.dispose();

    textFieldFocusNode69?.dispose();
    textController69?.dispose();

    textFieldFocusNode70?.dispose();
    textController70?.dispose();

    textFieldFocusNode71?.dispose();
    textController71?.dispose();

    textFieldFocusNode72?.dispose();
    textController72?.dispose();

    textFieldFocusNode73?.dispose();
    textController73?.dispose();

    textFieldFocusNode74?.dispose();
    textController74?.dispose();

    textFieldFocusNode75?.dispose();
    textController75?.dispose();

    textFieldFocusNode76?.dispose();
    textController76?.dispose();

    textFieldFocusNode77?.dispose();
    textController77?.dispose();

    textFieldFocusNode78?.dispose();
    textController78?.dispose();

    textFieldFocusNode79?.dispose();
    textController79?.dispose();

    textFieldFocusNode80?.dispose();
    textController80?.dispose();

    textFieldFocusNode81?.dispose();
    textController81?.dispose();

    textFieldFocusNode82?.dispose();
    textController82?.dispose();

    textFieldFocusNode83?.dispose();
    textController83?.dispose();

    textFieldFocusNode84?.dispose();
    textController84?.dispose();

    textFieldFocusNode85?.dispose();
    textController85?.dispose();

    textFieldFocusNode86?.dispose();
    textController86?.dispose();

    textFieldFocusNode87?.dispose();
    textController87?.dispose();

    textFieldFocusNode88?.dispose();
    textController88?.dispose();

    textFieldFocusNode89?.dispose();
    textController89?.dispose();

    textFieldFocusNode90?.dispose();
    textController90?.dispose();

    textFieldFocusNode91?.dispose();
    textController91?.dispose();

    textFieldFocusNode92?.dispose();
    textController92?.dispose();

    textFieldFocusNode93?.dispose();
    textController93?.dispose();

    textFieldFocusNode94?.dispose();
    textController94?.dispose();

    textFieldFocusNode95?.dispose();
    textController95?.dispose();

    textFieldFocusNode96?.dispose();
    textController96?.dispose();

    textFieldFocusNode97?.dispose();
    textController97?.dispose();

    textFieldFocusNode98?.dispose();
    textController98?.dispose();

    textFieldFocusNode99?.dispose();
    textController99?.dispose();

    textFieldFocusNode100?.dispose();
    textController100?.dispose();

    textFieldFocusNode101?.dispose();
    textController101?.dispose();

    textFieldFocusNode102?.dispose();
    textController102?.dispose();

    textFieldFocusNode103?.dispose();
    textController103?.dispose();

    textFieldFocusNode104?.dispose();
    textController104?.dispose();

    textFieldFocusNode105?.dispose();
    textController105?.dispose();

    textFieldFocusNode106?.dispose();
    textController106?.dispose();

    textFieldFocusNode107?.dispose();
    textController107?.dispose();

    textFieldFocusNode108?.dispose();
    textController108?.dispose();

    textFieldFocusNode109?.dispose();
    textController109?.dispose();

    textFieldFocusNode110?.dispose();
    textController110?.dispose();

    textFieldFocusNode111?.dispose();
    textController111?.dispose();

    textFieldFocusNode112?.dispose();
    textController112?.dispose();

    textFieldFocusNode113?.dispose();
    textController113?.dispose();

    textFieldFocusNode114?.dispose();
    textController114?.dispose();

    textFieldFocusNode115?.dispose();
    textController115?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
