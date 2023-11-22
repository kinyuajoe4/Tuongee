import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/norecords/norecords_widget.dart';
import '/pages/components/noresults/noresults_widget.dart';
import 'labtests_widget.dart' show LabtestsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LabtestsModel extends FlutterFlowModel<LabtestsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for noresults component.
  late NoresultsModel noresultsModel;
  // Model for norecords component.
  late NorecordsModel norecordsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    noresultsModel = createModel(context, () => NoresultsModel());
    norecordsModel = createModel(context, () => NorecordsModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    noresultsModel.dispose();
    norecordsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
