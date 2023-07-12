import '/backend/backend.dart';
import '/components/navigation/sidebar/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'file_model.dart';
export 'file_model.dart';

class FileWidget extends StatefulWidget {
  const FileWidget({
    Key? key,
    this.file,
  }) : super(key: key);

  final FilesRecord? file;

  @override
  _FileWidgetState createState() => _FileWidgetState();
}

class _FileWidgetState extends State<FileWidget> {
  late FileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FileModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'file'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FILE_PAGE_file_ON_INIT_STATE');
      logFirebaseEvent('file_update_app_state');
      setState(() {
        FFAppState().currentPage = 'File';
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
        title: 'file',
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
                widget.file!.name,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: Colors.white,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primary,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: Icon(
                      Icons.info_outlined,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent('FILE_PAGE_info_outlined_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_navigate_to');

                      context.pushNamed('fileInformations');
                    },
                  ),
                ),
              ],
              centerTitle: true,
              elevation: 4.0,
            ),
            body: SafeArea(
              top: true,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  wrapWithModel(
                    model: _model.sidebarModel,
                    updateCallback: () => setState(() {}),
                    child: SidebarWidget(),
                  ),
                  if (functions.findPdfExt(widget.file!.fileUrl))
                    Expanded(
                      child: FlutterFlowPdfViewer(
                        networkPath: widget.file!.fileUrl,
                        width: double.infinity,
                        height: double.infinity,
                        horizontalScroll: false,
                      ),
                    ),
                  if (functions.findImgExt(widget.file!.fileUrl))
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          functions.urlToImgPath(widget.file!.fileUrl),
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
