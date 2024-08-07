import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/norecords/norecords_widget.dart';
import 'categoriespage_widget.dart' show CategoriespageWidget;
import 'package:flutter/material.dart';

class CategoriespageModel extends FlutterFlowModel<CategoriespageWidget> {
  ///  State fields for stateful widgets in this page.

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

  @override
  void initState(BuildContext context) {
    norecordsModel1 = createModel(context, () => NorecordsModel());
    norecordsModel2 = createModel(context, () => NorecordsModel());
    norecordsModel3 = createModel(context, () => NorecordsModel());
    norecordsModel4 = createModel(context, () => NorecordsModel());
    norecordsModel5 = createModel(context, () => NorecordsModel());
    norecordsModel6 = createModel(context, () => NorecordsModel());
  }

  @override
  void dispose() {
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
}
