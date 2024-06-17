import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode;
  TextEditingController? yourEmailTextController;
  String? Function(BuildContext, String?)? yourEmailTextControllerValidator;
  // State field(s) for yourAge widget.
  FocusNode? yourAgeFocusNode;
  TextEditingController? yourAgeTextController;
  String? Function(BuildContext, String?)? yourAgeTextControllerValidator;
  // State field(s) for speciality widget.
  FocusNode? specialityFocusNode1;
  TextEditingController? specialityTextController1;
  String? Function(BuildContext, String?)? specialityTextController1Validator;
  // State field(s) for speciality widget.
  FocusNode? specialityFocusNode2;
  TextEditingController? specialityTextController2;
  String? Function(BuildContext, String?)? specialityTextController2Validator;
  // State field(s) for Yourschedule widget.
  FocusNode? yourscheduleFocusNode;
  TextEditingController? yourscheduleTextController;
  String? Function(BuildContext, String?)? yourscheduleTextControllerValidator;
  // State field(s) for yourAilments widget.
  FocusNode? yourAilmentsFocusNode;
  TextEditingController? yourAilmentsTextController;
  String? Function(BuildContext, String?)? yourAilmentsTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    yourEmailFocusNode?.dispose();
    yourEmailTextController?.dispose();

    yourAgeFocusNode?.dispose();
    yourAgeTextController?.dispose();

    specialityFocusNode1?.dispose();
    specialityTextController1?.dispose();

    specialityFocusNode2?.dispose();
    specialityTextController2?.dispose();

    yourscheduleFocusNode?.dispose();
    yourscheduleTextController?.dispose();

    yourAilmentsFocusNode?.dispose();
    yourAilmentsTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
