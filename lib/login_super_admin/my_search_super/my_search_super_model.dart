import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/login_super_admin/add_new_property/add_new_property_widget.dart';
import '/login_super_admin/new_sales_person/new_sales_person_widget.dart';
import 'my_search_super_widget.dart' show MySearchSuperWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MySearchSuperModel extends FlutterFlowModel<MySearchSuperWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
