import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_captionpage_widget.dart' show AddCaptionpageWidget;
import 'package:flutter/material.dart';

class AddCaptionpageModel extends FlutterFlowModel<AddCaptionpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  ChannelmessageRecord? captionsuccess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
