import '/flutter_flow/flutter_flow_util.dart';
import 'thoughts_widget.dart' show ThoughtsWidget;
import 'package:flutter/material.dart';

class ThoughtsModel extends FlutterFlowModel<ThoughtsWidget> {
  ///  Local state fields for this page.

  String? star;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
