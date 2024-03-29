import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'second_widget.dart' show SecondWidget;
import 'package:flutter/material.dart';

class SecondModel extends FlutterFlowModel<SecondWidget> {
  ///  Local state fields for this page.

  String? statusInState = 'status is Null';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetSingleCharacter)] action in Button widget.
  ApiCallResponse? apiResultSingleId;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
