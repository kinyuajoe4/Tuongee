import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'display_model.dart';
export 'display_model.dart';

class DisplayWidget extends StatefulWidget {
  const DisplayWidget({Key? key}) : super(key: key);

  @override
  _DisplayWidgetState createState() => _DisplayWidgetState();
}

class _DisplayWidgetState extends State<DisplayWidget> {
  late DisplayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DisplayModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
      child: Container(
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(125.0, 12.0, 0.0, 3.0),
              child: Container(
                width: 100.0,
                height: 100.0,
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
                  color: Color(0xFF040404),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/bot.jpg',
                    ).image,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3.0,
                      color: Color(0xFF272737),
                      offset: Offset(0.0, 1.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: Color(0xB91726D0),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 10.0, 0.0),
              child: Container(
                width: 300.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 10.0, 0.0, 0.0),
                            child: SelectionArea(
                                child: AutoSizeText(
                              'Our \n',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context).success,
                                    fontSize: 16.0,
                                    lineHeight: 1.5,
                                  ),
                            )),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: SelectionArea(
                                child: AutoSizeText(
                              'Mental Health Wellness Chatbot\n',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF0055FF),
                                    fontSize: 16.0,
                                    lineHeight: 1.5,
                                  ),
                            )),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(3.0, 30.0, 0.0, 0.0),
                        child: SelectionArea(
                            child: AutoSizeText(
                          ' is able to converse and interact with human users using written  languages🤯',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context).success,
                                    fontSize: 16.0,
                                    lineHeight: 1.5,
                                  ),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
