import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/empty_list/empty_list_widget.dart';
import '/pages/components/norecords/norecords_widget.dart';
import 'categoriespage_widget.dart' show CategoriespageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoriespageModel extends FlutterFlowModel<CategoriespageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for norecords component.
  late NorecordsModel norecordsModel1;
  // Model for norecords component.
  late NorecordsModel norecordsModel2;
  // Model for norecords component.
  late NorecordsModel norecordsModel3;
  // Model for norecords component.
  late NorecordsModel norecordsModel4;
  // Model for norecords component.
  late NorecordsModel norecordsModel5;
  // Model for norecords component.
  late NorecordsModel norecordsModel6;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    norecordsModel1 = createModel(context, () => NorecordsModel());
    norecordsModel2 = createModel(context, () => NorecordsModel());
    norecordsModel3 = createModel(context, () => NorecordsModel());
    norecordsModel4 = createModel(context, () => NorecordsModel());
    norecordsModel5 = createModel(context, () => NorecordsModel());
    norecordsModel6 = createModel(context, () => NorecordsModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
    norecordsModel1.dispose();
    norecordsModel2.dispose();
    norecordsModel3.dispose();
    norecordsModel4.dispose();
    norecordsModel5.dispose();
    norecordsModel6.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
