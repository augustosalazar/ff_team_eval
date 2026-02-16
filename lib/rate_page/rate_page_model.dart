import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'rate_page_widget.dart' show RatePageWidget;
import 'package:flutter/material.dart';

class RatePageModel extends FlutterFlowModel<RatePageWidget> {
  ///  Local state fields for this page.

  GroupStruct? myGroup;
  void updateMyGroupStruct(Function(GroupStruct) updateFn) {
    updateFn(myGroup ??= GroupStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - randomEvaluations] action in Button widget.
  List<GroupStruct>? evaluatedGroups;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
