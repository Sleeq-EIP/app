import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'file_informations_model.dart';
export 'file_informations_model.dart';

class FileInformationsWidget extends StatefulWidget {
  const FileInformationsWidget({Key? key}) : super(key: key);

  @override
  _FileInformationsWidgetState createState() => _FileInformationsWidgetState();
}

class _FileInformationsWidgetState extends State<FileInformationsWidget> {
  late FileInformationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FileInformationsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'fileInformations'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FILE_INFORMATIONS_fileInformations_ON_IN');
      logFirebaseEvent('fileInformations_update_app_state');
      setState(() {
        FFAppState().currentPage = 'FileInformation';
      });
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
        title: 'fileInformations',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: true,
              title: Text(
                FFLocalizations.of(context).getText(
                  '90d8n39p' /* Informations */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 4.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'a1iqw8rl' /* Name : */,
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'cqydfgnk' /* File Name */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'uiuo94s4' /* Type : */,
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '1nb12l3g' /* .pdf */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '3uh5ik4j' /* Size : */,
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '0hsomtgg' /* 20 MB */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'vn5bzht6' /* Creation Date */,
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'ycbwmqug' /* May 23, 2023 - 14:33 */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
