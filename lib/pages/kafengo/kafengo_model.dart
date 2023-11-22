import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/doc_details_widget.dart';
import '/components/emptymessage_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/components/display/display_widget.dart';
import '/pages/components/empty_list/empty_list_widget.dart';
import '/pages/components/noresults/noresults_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'kafengo_widget.dart' show KafengoWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class KafengoModel extends FlutterFlowModel<KafengoWidget> {
  ///  Local state fields for this page.

  String? inputContent;

  dynamic chatHistory;

  bool inputIsfilled = true;

  bool? input2filled = true;

  String tittle = 'D.r';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for ListView widget.
  ScrollController? listViewController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (Send Full Prompt)] action in IconButton widget.
  ApiCallResponse? chatGPTResponse;
  // State field(s) for chanelsearch widget.
  FocusNode? chanelsearchFocusNode;
  TextEditingController? chanelsearchController;
  String? Function(BuildContext, String?)? chanelsearchControllerValidator;
  List<ChannelsRecord> simpleSearchResults1 = [];
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ListView widget.
  ScrollController? listViewController2;
  // State field(s) for ListView widget.
  ScrollController? listViewController3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  List<UsersRecord> simpleSearchResults2 = [];
  // State field(s) for Row widget.
  ScrollController? rowController1;
  // State field(s) for Row widget.
  ScrollController? rowController2;
  // State field(s) for Row widget.
  ScrollController? rowController3;
  // State field(s) for ListView widget.
  ScrollController? listViewController4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    listViewController1 = ScrollController();
    listViewController2 = ScrollController();
    listViewController3 = ScrollController();
    rowController1 = ScrollController();
    rowController2 = ScrollController();
    rowController3 = ScrollController();
    listViewController4 = ScrollController();
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    listViewController1?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    chanelsearchFocusNode?.dispose();
    chanelsearchController?.dispose();

    listViewController2?.dispose();
    listViewController3?.dispose();
    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    rowController1?.dispose();
    rowController2?.dispose();
    rowController3?.dispose();
    listViewController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
