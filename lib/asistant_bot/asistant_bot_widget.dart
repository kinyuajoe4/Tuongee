import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/display/display_widget.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'asistant_bot_model.dart';
export 'asistant_bot_model.dart';

class AsistantBotWidget extends StatefulWidget {
  const AsistantBotWidget({super.key});

  @override
  State<AsistantBotWidget> createState() => _AsistantBotWidgetState();
}

class _AsistantBotWidgetState extends State<AsistantBotWidget>
    with TickerProviderStateMixin {
  late AsistantBotModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AsistantBotModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultThreads = await OpenAIChatGPTGroup.threadsCall.call(
        token: FFAppState().apiKey,
      );

      if ((_model.apiResultThreads?.succeeded ?? true)) {
        _model.threadId = OpenAIChatGPTGroup.threadsCall
            .threadId(
              (_model.apiResultThreads?.jsonBody ?? ''),
            )
            .toString();
        setState(() {});
      }
    });

    _model.questionTestFieldTextController ??= TextEditingController();
    _model.questionTestFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'AsistantBot',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 45.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).background,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/blur_bg@1x.png',
                      ).image,
                    ),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      constraints: const BoxConstraints(
                        maxWidth: 770.0,
                      ),
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                      Container(
                                        width: 100.0,
                                        height: 24.0,
                                        decoration: const BoxDecoration(),
                                      ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Tuongee Chat bot',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Text(
                                                'You\'re friendly support  available 24hrs ...',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ].divide(const SizedBox(height: 4.0)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 12.0, 12.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                              sigmaX: 5.0,
                                              sigmaY: 4.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .background,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: SingleChildScrollView(
                                                controller:
                                                    _model.scollingChatColumn,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: Builder(
                                                          builder: (context) {
                                                            final chat = _model
                                                                .chatHistory
                                                                .toList();
                                                            if (chat.isEmpty) {
                                                              return const SizedBox(
                                                                width: double
                                                                    .infinity,
                                                                child:
                                                                    DisplayWidget(),
                                                              );
                                                            }

                                                            return ListView
                                                                .separated(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .fromLTRB(
                                                                0,
                                                                16.0,
                                                                0,
                                                                16.0,
                                                              ),
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  chat.length,
                                                              separatorBuilder: (_,
                                                                      __) =>
                                                                  const SizedBox(
                                                                      height:
                                                                          16.0),
                                                              itemBuilder:
                                                                  (context,
                                                                      chatIndex) {
                                                                final chatItem =
                                                                    chat[
                                                                        chatIndex];
                                                                return Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    if ((int
                                                                        index) {
                                                                      return index %
                                                                              2 !=
                                                                          0;
                                                                    }(chatIndex))
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                constraints: BoxConstraints(
                                                                                  maxWidth: () {
                                                                                    if (MediaQuery.sizeOf(context).width >= 1170.0) {
                                                                                      return 700.0;
                                                                                    } else if (MediaQuery.sizeOf(context).width <= 470.0) {
                                                                                      return 330.0;
                                                                                    } else {
                                                                                      return 530.0;
                                                                                    }
                                                                                  }(),
                                                                                ),
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  boxShadow: const [
                                                                                    BoxShadow(
                                                                                      blurRadius: 3.0,
                                                                                      color: Color(0x33000000),
                                                                                      offset: Offset(
                                                                                        0.0,
                                                                                        1.0,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.all(12.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      SelectionArea(
                                                                                          child: AutoSizeText(
                                                                                        chatItem.text.value,
                                                                                        style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                              fontFamily: 'Outfit',
                                                                                              color: FlutterFlowTheme.of(context).info,
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              lineHeight: 1.5,
                                                                                            ),
                                                                                      )),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    await Clipboard.setData(ClipboardData(text: chatItem.text.value));
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Response copied to clipboard.',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Outfit',
                                                                                                color: const Color(0x00000000),
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                        duration: const Duration(milliseconds: 2000),
                                                                                        backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                        child: Icon(
                                                                                          Icons.content_copy,
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          size: 10.0,
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        'Copy response',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Outfit',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    if (chatIndex %
                                                                            2 ==
                                                                        0)
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            constraints:
                                                                                BoxConstraints(
                                                                              maxWidth: () {
                                                                                if (MediaQuery.sizeOf(context).width >= 1170.0) {
                                                                                  return 700.0;
                                                                                } else if (MediaQuery.sizeOf(context).width <= 470.0) {
                                                                                  return 330.0;
                                                                                } else {
                                                                                  return 530.0;
                                                                                }
                                                                              }(),
                                                                            ),
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(12.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    chatItem.text.value,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Outfit',
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ).animateOnPageLoad(
                                                                              animationsMap['containerOnPageLoadAnimation2']!),
                                                                        ],
                                                                      ),
                                                                  ],
                                                                );
                                                              },
                                                              controller: _model
                                                                  .chatListView,
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      1.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        width: 300.0,
                                        child: TextFormField(
                                          controller: _model
                                              .questionTestFieldTextController,
                                          focusNode:
                                              _model.questionTestFieldFocusNode,
                                          autofocus: true,
                                          textCapitalization:
                                              TextCapitalization.sentences,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                                'How can I help you today ...',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedErrorBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: 8,
                                          minLines: 1,
                                          keyboardType: TextInputType.multiline,
                                          validator: _model
                                              .questionTestFieldTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30.0,
                                      borderWidth: 1.0,
                                      buttonSize: 60.0,
                                      icon: Icon(
                                        Icons.send_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 30.0,
                                      ),
                                      showLoadingIndicator: true,
                                      onPressed: () async {
                                        // Create a message
                                        _model.apiMessageCreateResult11 =
                                            await OpenAIChatGPTGroup.messageCall
                                                .call(
                                          threadId: _model.threadId,
                                          token: FFAppState().apiKey,
                                          content: _model
                                              .questionTestFieldTextController
                                              .text,
                                        );

                                        if ((_model.apiMessageCreateResult11
                                                ?.succeeded ??
                                            true)) {
                                          // Add Message to Chat History
                                          _model.addToChatHistory(
                                              ContentStruct.maybeFromMap(
                                                  getJsonField(
                                            (_model.apiMessageCreateResult11
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.content[0]''',
                                          ))!);
                                          setState(() {});
                                          // Clear TextField
                                          setState(() {
                                            _model
                                                .questionTestFieldTextController
                                                ?.clear();
                                          });
                                          // Wait for UI to catchup
                                          await Future.delayed(const Duration(
                                              milliseconds: 500));
                                          // Scroll to bottom
                                          await _model.scollingChatColumn
                                              ?.animateTo(
                                            _model.scollingChatColumn!.position
                                                .maxScrollExtent,
                                            duration:
                                                const Duration(milliseconds: 100),
                                            curve: Curves.ease,
                                          );
                                          // Run the assistant
                                          _model.apiAssistantRunResult22 =
                                              await OpenAIChatGPTGroup.runCall
                                                  .call(
                                            threadId: _model.threadId,
                                            assistantId:
                                                FFAppState().assistantId,
                                            token: FFAppState().apiKey,
                                          );

                                          if ((_model.apiAssistantRunResult22
                                                  ?.succeeded ??
                                              true)) {
                                            // Store the runid
                                            _model.runId =
                                                OpenAIChatGPTGroup.runCall
                                                    .runId(
                                                      (_model.apiAssistantRunResult22
                                                              ?.jsonBody ??
                                                          ''),
                                                    )
                                                    .toString();
                                            setState(() {});
                                            while (
                                                _model.status != 'completed') {
                                              _model.apiRetrieveRunResult33 =
                                                  await OpenAIChatGPTGroup
                                                      .retrieverunCall
                                                      .call(
                                                threadId: _model.threadId,
                                                runId: _model.runId,
                                                token: FFAppState().apiKey,
                                              );

                                              if ((_model.apiRetrieveRunResult33
                                                      ?.succeeded ??
                                                  true)) {
                                                _model.status =
                                                    OpenAIChatGPTGroup
                                                        .retrieverunCall
                                                        .status(
                                                          (_model.apiRetrieveRunResult33
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )
                                                        .toString();
                                                setState(() {});
                                                if (_model.status !=
                                                    'completed') {
                                                  // Delay 3 seconds before next check
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 3000));
                                                }
                                              }
                                            }
                                            // Get latest message
                                            _model.apiGetMessagesResult44 =
                                                await OpenAIChatGPTGroup
                                                    .messagesCall
                                                    .call(
                                              threadId: _model.threadId,
                                              token: FFAppState().apiKey,
                                            );

                                            if ((_model.apiGetMessagesResult44
                                                    ?.succeeded ??
                                                true)) {
                                              // Add message to chat history
                                              _model.addToChatHistory(
                                                  ContentStruct.maybeFromMap(
                                                      OpenAIChatGPTGroup
                                                          .messagesCall
                                                          .data(
                                                (_model.apiGetMessagesResult44
                                                        ?.jsonBody ??
                                                    ''),
                                              ))!);
                                              setState(() {});
                                              // Wait for UI to catchup
                                              await Future.delayed(
                                                  const Duration(
                                                      milliseconds: 500));
                                              // Scroll to bottom
                                              await _model.scollingChatColumn
                                                  ?.animateTo(
                                                _model.scollingChatColumn!
                                                    .position.maxScrollExtent,
                                                duration:
                                                    const Duration(milliseconds: 100),
                                                curve: Curves.ease,
                                              );
                                              // Reset completed status
                                              _model.status = null;
                                              setState(() {});
                                            }
                                          }
                                        }

                                        setState(() {});
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Container(
                              width: 100.0,
                              height: 60.0,
                              decoration: const BoxDecoration(),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
