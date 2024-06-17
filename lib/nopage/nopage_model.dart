import '/flutter_flow/flutter_flow_util.dart';
import 'nopage_widget.dart' show NopageWidget;
import 'package:flutter/material.dart';

class NopageModel extends FlutterFlowModel<NopageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
