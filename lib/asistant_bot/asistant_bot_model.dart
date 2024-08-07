import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'asistant_bot_widget.dart' show AsistantBotWidget;
import 'package:flutter/material.dart';

class AsistantBotModel extends FlutterFlowModel<AsistantBotWidget> {
  ///  Local state fields for this page.

  List<ContentStruct> chatHistory = [];
  void addToChatHistory(ContentStruct item) => chatHistory.add(item);
  void removeFromChatHistory(ContentStruct item) => chatHistory.remove(item);
  void removeAtIndexFromChatHistory(int index) => chatHistory.removeAt(index);
  void insertAtIndexInChatHistory(int index, ContentStruct item) =>
      chatHistory.insert(index, item);
  void updateChatHistoryAtIndex(int index, Function(ContentStruct) updateFn) =>
      chatHistory[index] = updateFn(chatHistory[index]);

  String? threadId;

  String? runId;

  String? status;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (threads)] action in AsistantBot widget.
  ApiCallResponse? apiResultThreads;
  // State field(s) for ScollingChatColumn widget.
  ScrollController? scollingChatColumn;
  // State field(s) for ChatListView widget.
  ScrollController? chatListView;
  // State field(s) for QuestionTestField widget.
  FocusNode? questionTestFieldFocusNode;
  TextEditingController? questionTestFieldTextController;
  String? Function(BuildContext, String?)?
      questionTestFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (message)] action in SubmitIconButton widget.
  ApiCallResponse? apiMessageCreateResult11;
  // Stores action output result for [Backend Call - API (run)] action in SubmitIconButton widget.
  ApiCallResponse? apiAssistantRunResult22;
  // Stores action output result for [Backend Call - API (retrieverun)] action in SubmitIconButton widget.
  ApiCallResponse? apiRetrieveRunResult33;
  // Stores action output result for [Backend Call - API (messages)] action in SubmitIconButton widget.
  ApiCallResponse? apiGetMessagesResult44;

  @override
  void initState(BuildContext context) {
    scollingChatColumn = ScrollController();
    chatListView = ScrollController();
  }

  @override
  void dispose() {
    scollingChatColumn?.dispose();
    chatListView?.dispose();
    questionTestFieldFocusNode?.dispose();
    questionTestFieldTextController?.dispose();
  }
}
