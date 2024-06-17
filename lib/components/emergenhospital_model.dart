import '/flutter_flow/flutter_flow_util.dart';
import 'emergenhospital_widget.dart' show EmergenhospitalWidget;
import 'package:flutter/material.dart';

class EmergenhospitalModel extends FlutterFlowModel<EmergenhospitalWidget> {
  ///  Local state fields for this component.

  bool islistfull = false;

  ///  State fields for stateful widgets in this component.

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
