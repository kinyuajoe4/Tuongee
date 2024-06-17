import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'complete_profile_widget.dart' show CompleteProfileWidget;
import 'package:flutter/material.dart';

class CompleteProfileModel extends FlutterFlowModel<CompleteProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for RadioButton001 widget.
  FormFieldController<String>? radioButton001ValueController;
  // State field(s) for RadioButton02 widget.
  FormFieldController<String>? radioButton02ValueController;
  // State field(s) for RadioButton03 widget.
  FormFieldController<String>? radioButton03ValueController;
  // State field(s) for RadioButton04 widget.
  FormFieldController<String>? radioButton04ValueController;
  // State field(s) for RadioButton05 widget.
  FormFieldController<String>? radioButton05ValueController;
  // State field(s) for RadioButton06 widget.
  FormFieldController<String>? radioButton06ValueController;
  // State field(s) for RadioButton07 widget.
  FormFieldController<String>? radioButton07ValueController;
  // State field(s) for RadioButton08 widget.
  FormFieldController<String>? radioButton08ValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButton001Value => radioButton001ValueController?.value;
  String? get radioButton02Value => radioButton02ValueController?.value;
  String? get radioButton03Value => radioButton03ValueController?.value;
  String? get radioButton04Value => radioButton04ValueController?.value;
  String? get radioButton05Value => radioButton05ValueController?.value;
  String? get radioButton06Value => radioButton06ValueController?.value;
  String? get radioButton07Value => radioButton07ValueController?.value;
  String? get radioButton08Value => radioButton08ValueController?.value;
}
