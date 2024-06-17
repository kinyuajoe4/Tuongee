import '/flutter_flow/flutter_flow_util.dart';
import 'maps_widget.dart' show MapsWidget;
import 'package:flutter/material.dart';

class MapsModel extends FlutterFlowModel<MapsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
