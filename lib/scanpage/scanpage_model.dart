import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/norecords/norecords_widget.dart';
import 'scanpage_widget.dart' show ScanpageWidget;
import 'package:flutter/material.dart';

class ScanpageModel extends FlutterFlowModel<ScanpageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for norecords component.
  late NorecordsModel norecordsModel1;
  // Model for norecords component.
  late NorecordsModel norecordsModel2;

  @override
  void initState(BuildContext context) {
    norecordsModel1 = createModel(context, () => NorecordsModel());
    norecordsModel2 = createModel(context, () => NorecordsModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    norecordsModel1.dispose();
    norecordsModel2.dispose();
  }
}
