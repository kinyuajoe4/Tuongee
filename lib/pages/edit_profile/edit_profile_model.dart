import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for yourEmail widget.
  TextEditingController? yourEmailController;
  String? Function(BuildContext, String?)? yourEmailControllerValidator;
  // State field(s) for yourAge widget.
  TextEditingController? yourAgeController;
  String? Function(BuildContext, String?)? yourAgeControllerValidator;
  // State field(s) for speciality widget.
  TextEditingController? specialityController1;
  String? Function(BuildContext, String?)? specialityController1Validator;
  // State field(s) for speciality widget.
  TextEditingController? specialityController2;
  String? Function(BuildContext, String?)? specialityController2Validator;
  // State field(s) for yourAilments widget.
  TextEditingController? yourAilmentsController;
  String? Function(BuildContext, String?)? yourAilmentsControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    yourNameController?.dispose();
    yourEmailController?.dispose();
    yourAgeController?.dispose();
    specialityController1?.dispose();
    specialityController2?.dispose();
    yourAilmentsController?.dispose();
  }

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonController?.value;
}
