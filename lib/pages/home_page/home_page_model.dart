import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetAllStudents)] action in HomePage widget.
  ApiCallResponse? apiResultFullStudentList;
  // Stores action output result for [Custom Action - createGroups] action in HomePage widget.
  List<GroupStruct>? defaultGroups;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Custom Action - createGroups] action in CountController widget.
  List<GroupStruct>? theGroups;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
