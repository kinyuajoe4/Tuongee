import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'kafengo_model.dart';
export 'kafengo_model.dart';

class KafengoWidget extends StatefulWidget {
  const KafengoWidget({
    super.key,
    String? tittle,
  }) : tittle = tittle ?? 'D.r';

  final String tittle;

  @override
  State<KafengoWidget> createState() => _KafengoWidgetState();
}

class _KafengoWidgetState extends State<KafengoWidget> {
  late KafengoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KafengoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'kafengo',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: const SafeArea(
              top: true,
              child: Stack(
                children: [],
              ),
            ),
          ),
        ));
  }
}
