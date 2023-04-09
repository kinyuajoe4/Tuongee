import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_logo_model.dart';
export 'main_logo_model.dart';

class MainLogoWidget extends StatefulWidget {
  const MainLogoWidget({Key? key}) : super(key: key);

  @override
  _MainLogoWidgetState createState() => _MainLogoWidgetState();
}

class _MainLogoWidgetState extends State<MainLogoWidget> {
  late MainLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainLogoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          children: [
            if (!(Theme.of(context).brightness == Brightness.dark))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Image.asset(
                  'assets/images/no_back.png',
                  width: 100.0,
                  height: 80.0,
                  fit: BoxFit.fitWidth,
                ),
              ),
            if (Theme.of(context).brightness == Brightness.dark)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Image.asset(
                  'assets/images/no_back.png',
                  width: 100.0,
                  height: 80.0,
                  fit: BoxFit.fitWidth,
                ),
              ),
          ],
        ),
        Text(
          'TUONGEE',
          textAlign: TextAlign.end,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Outfit',
                color: Color(0xFF040404),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          'The Platform',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Outfit',
                color: Color(0xFF040404),
                fontSize: 20.0,
              ),
        ),
      ],
    );
  }
}
