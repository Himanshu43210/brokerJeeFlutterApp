import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'edit_item_widget.dart' show EditItemWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditItemModel extends FlutterFlowModel<EditItemWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for hiveID widget.
  FocusNode? hiveIDFocusNode;
  TextEditingController? hiveIDTextController;
  String? Function(BuildContext, String?)? hiveIDTextControllerValidator;
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode;
  TextEditingController? projectNameTextController;
  String? Function(BuildContext, String?)? projectNameTextControllerValidator;
  // State field(s) for locationName widget.
  FocusNode? locationNameFocusNode;
  TextEditingController? locationNameTextController;
  String? Function(BuildContext, String?)? locationNameTextControllerValidator;
  // State field(s) for apartmentDescription widget.
  FocusNode? apartmentDescriptionFocusNode;
  TextEditingController? apartmentDescriptionTextController;
  String? Function(BuildContext, String?)?
      apartmentDescriptionTextControllerValidator;
  // State field(s) for size widget.
  FocusNode? sizeFocusNode;
  TextEditingController? sizeTextController;
  String? Function(BuildContext, String?)? sizeTextControllerValidator;
  // State field(s) for demand widget.
  FocusNode? demandFocusNode;
  TextEditingController? demandTextController;
  String? Function(BuildContext, String?)? demandTextControllerValidator;
  // State field(s) for offer widget.
  FocusNode? offerFocusNode;
  TextEditingController? offerTextController;
  String? Function(BuildContext, String?)? offerTextControllerValidator;
  // State field(s) for rentDemandMonthly widget.
  FocusNode? rentDemandMonthlyFocusNode;
  TextEditingController? rentDemandMonthlyTextController;
  String? Function(BuildContext, String?)?
      rentDemandMonthlyTextControllerValidator;
  // State field(s) for interested widget.
  FocusNode? interestedFocusNode;
  TextEditingController? interestedTextController;
  String? Function(BuildContext, String?)? interestedTextControllerValidator;
  // State field(s) for check widget.
  FocusNode? checkFocusNode;
  TextEditingController? checkTextController;
  String? Function(BuildContext, String?)? checkTextControllerValidator;
  // State field(s) for floor widget.
  FocusNode? floorFocusNode;
  TextEditingController? floorTextController;
  String? Function(BuildContext, String?)? floorTextControllerValidator;
  // State field(s) for tower widget.
  FocusNode? towerFocusNode;
  TextEditingController? towerTextController;
  String? Function(BuildContext, String?)? towerTextControllerValidator;
  // State field(s) for remarks widget.
  FocusNode? remarksFocusNode;
  TextEditingController? remarksTextController;
  String? Function(BuildContext, String?)? remarksTextControllerValidator;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for contact widget.
  FocusNode? contactFocusNode;
  TextEditingController? contactTextController;
  String? Function(BuildContext, String?)? contactTextControllerValidator;
  // State field(s) for CreatedBy widget.
  FocusNode? createdByFocusNode;
  TextEditingController? createdByTextController;
  String? Function(BuildContext, String?)? createdByTextControllerValidator;
  // Stores action output result for [Custom Action - refreshListSummary] action in Button widget.
  List<ItemFlowStruct>? afterAddItem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    hiveIDFocusNode?.dispose();
    hiveIDTextController?.dispose();

    projectNameFocusNode?.dispose();
    projectNameTextController?.dispose();

    locationNameFocusNode?.dispose();
    locationNameTextController?.dispose();

    apartmentDescriptionFocusNode?.dispose();
    apartmentDescriptionTextController?.dispose();

    sizeFocusNode?.dispose();
    sizeTextController?.dispose();

    demandFocusNode?.dispose();
    demandTextController?.dispose();

    offerFocusNode?.dispose();
    offerTextController?.dispose();

    rentDemandMonthlyFocusNode?.dispose();
    rentDemandMonthlyTextController?.dispose();

    interestedFocusNode?.dispose();
    interestedTextController?.dispose();

    checkFocusNode?.dispose();
    checkTextController?.dispose();

    floorFocusNode?.dispose();
    floorTextController?.dispose();

    towerFocusNode?.dispose();
    towerTextController?.dispose();

    remarksFocusNode?.dispose();
    remarksTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    contactFocusNode?.dispose();
    contactTextController?.dispose();

    createdByFocusNode?.dispose();
    createdByTextController?.dispose();
  }
}
