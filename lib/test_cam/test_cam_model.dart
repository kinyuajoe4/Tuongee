import '/flutter_flow/flutter_flow_util.dart';
import 'test_cam_widget.dart' show TestCamWidget;
import 'package:flutter/material.dart';

class TestCamModel extends FlutterFlowModel<TestCamWidget> {
  ///  Local state fields for this page.

  int selectedCameraIndex = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
