import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/main_logo/main_logo_widget.dart';
import 'find_symptoms_widget.dart' show FindSymptomsWidget;
import 'package:flutter/material.dart';

class FindSymptomsModel extends FlutterFlowModel<FindSymptomsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for main_Logo component.
  late MainLogoModel mainLogoModel;
  // State field(s) for searchField widget.
  FocusNode? searchFieldFocusNode;
  TextEditingController? searchFieldTextController;
  String? Function(BuildContext, String?)? searchFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    mainLogoModel = createModel(context, () => MainLogoModel());
  }

  @override
  void dispose() {
    mainLogoModel.dispose();
    searchFieldFocusNode?.dispose();
    searchFieldTextController?.dispose();
  }
}
