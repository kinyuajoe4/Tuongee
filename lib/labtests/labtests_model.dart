import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/norecords/norecords_widget.dart';
import '/pages/components/noresults/noresults_widget.dart';
import 'labtests_widget.dart' show LabtestsWidget;
import 'package:flutter/material.dart';

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

  @override
  void initState(BuildContext context) {
    noresultsModel = createModel(context, () => NoresultsModel());
    norecordsModel = createModel(context, () => NorecordsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    noresultsModel.dispose();
    norecordsModel.dispose();
  }
}
