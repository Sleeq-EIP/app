import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'folder_button_list_mode_model.dart';
export 'folder_button_list_mode_model.dart';

class FolderButtonListModeWidget extends StatefulWidget {
  const FolderButtonListModeWidget({
    Key? key,
    required this.name,
    required this.color,
    required this.path,
    required this.previousFolders,
  }) : super(key: key);

  final String? name;
  final Color? color;
  final DocumentReference? path;
  final List<String>? previousFolders;

  @override
  _FolderButtonListModeWidgetState createState() =>
      _FolderButtonListModeWidgetState();
}

class _FolderButtonListModeWidgetState
    extends State<FolderButtonListModeWidget> {
  late FolderButtonListModeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FolderButtonListModeModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          logFirebaseEvent('FOLDER_BUTTON_LIST_MODE_Container_q48do2');
          logFirebaseEvent('Container_update_app_state');
          setState(() {
            FFAppState().selectedFolders = [];
            FFAppState().isSelectionMode = false;
            FFAppState().selecteFiles = [];
          });
          logFirebaseEvent('Container_navigate_to');

          context.pushNamed(
            'folders',
            pathParameters: {
              'currentFolder': serializeParam(
                widget.path,
                ParamType.DocumentReference,
              ),
            }.withoutNulls,
            queryParameters: {
              'folderNames': serializeParam(
                functions.addFolderToList(
                    widget.previousFolders!.toList(), widget.name!),
                ParamType.String,
                true,
              ),
            }.withoutNulls,
            extra: <String, dynamic>{
              kTransitionInfoKey: TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
              ),
            },
          );
        },
        child: Material(
          color: Colors.transparent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            width: double.infinity,
            height: 50.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.folder_rounded,
                    color: widget.color,
                    size: 24.0,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Text(
                      widget.name!,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
