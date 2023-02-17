import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_button_model.dart';
export 'new_button_model.dart';

class NewButtonWidget extends StatefulWidget {
  const NewButtonWidget({Key? key}) : super(key: key);

  @override
  _NewButtonWidgetState createState() => _NewButtonWidgetState();
}

class _NewButtonWidgetState extends State<NewButtonWidget> {
  late NewButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FlutterFlowDropDown<String>(
      options: [
        FFLocalizations.of(context).getText(
          'ggrfcuui' /* Folder */,
        ),
        FFLocalizations.of(context).getText(
          'rzjrnhhh' /* File */,
        )
      ],
      onChanged: (val) async {
        setState(() => _model.dropDownValue = val);
        logFirebaseEvent('NEW_BUTTON_DropDown_e4z2ya0e_ON_FORM_WID');
        if (_model.dropDownValue == 'folder') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Selected folder',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: Duration(milliseconds: 4000),
              backgroundColor: Color(0x00000000),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Selected file',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: Duration(milliseconds: 4000),
              backgroundColor: Color(0x00000000),
            ),
          );
        }
      },
      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
            fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
            color: FlutterFlowTheme.of(context).primaryText,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).bodyText1Family),
          ),
      hintText: FFLocalizations.of(context).getText(
        'blyhydr0' /* New */,
      ),
      icon: Icon(
        Icons.add_circle,
        size: 40,
      ),
      fillColor: FlutterFlowTheme.of(context).primaryColor,
      elevation: 2,
      borderColor: Colors.transparent,
      borderWidth: 0,
      borderRadius: 8,
      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
      hidesUnderline: true,
    );
  }
}
