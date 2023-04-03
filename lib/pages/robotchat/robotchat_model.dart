import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RobotchatModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for ins widget.
  TextEditingController? insController;
  String? Function(BuildContext, String?)? insControllerValidator;
  // Stores action output result for [Backend Call - API (textcompletion)] action in Button widget.
  ApiCallResponse? completion;
  // Stores action output result for [Backend Call - API (textedit)] action in Button widget.
  ApiCallResponse? textedit;
  // Stores action output result for [Backend Call - API (imagegeneration)] action in Button widget.
  ApiCallResponse? image;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    insController?.dispose();
  }

  /// Additional helper methods are added here.

}
