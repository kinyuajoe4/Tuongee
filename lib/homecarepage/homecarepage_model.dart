import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/norecords/norecords_widget.dart';
import 'homecarepage_widget.dart' show HomecarepageWidget;
import 'package:flutter/material.dart';

class HomecarepageModel extends FlutterFlowModel<HomecarepageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for norecords component.
  late NorecordsModel norecordsModel;

  @override
  void initState(BuildContext context) {
    norecordsModel = createModel(context, () => NorecordsModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    norecordsModel.dispose();
  }
}
