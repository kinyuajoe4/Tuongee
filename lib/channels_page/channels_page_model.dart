import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'channels_page_widget.dart' show ChannelsPageWidget;
import 'package:flutter/material.dart';

class ChannelsPageModel extends FlutterFlowModel<ChannelsPageWidget> {
  ///  Local state fields for this page.

  bool inputsfilled = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for chanelsearch widget.
  FocusNode? chanelsearchFocusNode;
  TextEditingController? chanelsearchTextController;
  String? Function(BuildContext, String?)? chanelsearchTextControllerValidator;
  List<ChannelsRecord> simpleSearchResults = [];
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    chanelsearchFocusNode?.dispose();
    chanelsearchTextController?.dispose();
  }
}
