import '/flutter_flow/flutter_flow_util.dart';
import 'testchannel_widget.dart' show TestchannelWidget;
import 'package:flutter/material.dart';

class TestchannelModel extends FlutterFlowModel<TestchannelWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
