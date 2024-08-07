import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'kafengo_copy_widget.dart' show KafengoCopyWidget;
import 'package:flutter/material.dart';

class KafengoCopyModel extends FlutterFlowModel<KafengoCopyWidget> {
  ///  Local state fields for this page.

  String? inputContent;

  dynamic chatHistory;

  bool inputIsfilled = true;

  bool? input2filled = true;

  String tittle = 'D.r';

  String? runId;

  String? status;

  List<ContentStruct> chathistory = [];
  void addToChathistory(ContentStruct item) => chathistory.add(item);
  void removeFromChathistory(ContentStruct item) => chathistory.remove(item);
  void removeAtIndexFromChathistory(int index) => chathistory.removeAt(index);
  void insertAtIndexInChathistory(int index, ContentStruct item) =>
      chathistory.insert(index, item);
  void updateChathistoryAtIndex(int index, Function(ContentStruct) updateFn) =>
      chathistory[index] = updateFn(chathistory[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
