import '/components/popups/rename_folder_dialog/rename_folder_dialog_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'folder_button_model.dart';
export 'folder_button_model.dart';

class FolderButtonWidget extends StatefulWidget {
  const FolderButtonWidget({
    Key? key,
    Color? color,
    required this.name,
    required this.path,
    required this.previousFolderNames,
  })  : this.color = color ?? const Color(0xFFFF0000),
        super(key: key);

  final Color color;
  final String? name;
  final DocumentReference? path;
  final List<String>? previousFolderNames;

  @override
  _FolderButtonWidgetState createState() => _FolderButtonWidgetState();
}

class _FolderButtonWidgetState extends State<FolderButtonWidget> {
  late FolderButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FolderButtonModel());

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

    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onLongPress: () async {
                logFirebaseEvent('FOLDER_BUTTON_folder_rounded_ICN_ON_LONG');
                logFirebaseEvent('IconButton_update_app_state');
                FFAppState().update(() {
                  FFAppState().isSelectionMode = true;
                  FFAppState().addToSelectedFolders(widget.path!);
                });
              },
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderWidth: 1.0,
                buttonSize: 100.0,
                icon: Icon(
                  Icons.folder_rounded,
                  color: widget.color,
                  size: 80.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('FOLDER_BUTTON_folder_rounded_ICN_ON_TAP');
                  if (FFAppState().isSelectionMode) {
                    if (FFAppState().selectedFolders.contains(widget.path)) {
                      logFirebaseEvent('IconButton_update_app_state');
                      setState(() {
                        FFAppState().removeFromSelectedFolders(widget.path!);
                      });
                      return;
                    } else {
                      logFirebaseEvent('IconButton_update_app_state');
                      setState(() {
                        FFAppState().addToSelectedFolders(widget.path!);
                      });
                      return;
                    }
                  } else {
                    logFirebaseEvent('IconButton_update_app_state');
                    setState(() {
                      FFAppState().selectedFolders = [];
                      FFAppState().isSelectionMode = false;
                      FFAppState().selecteFiles = [];
                    });
                    logFirebaseEvent('IconButton_navigate_to');

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
                              widget.previousFolderNames!.toList(),
                              widget.name!),
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

                    return;
                  }
                },
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onLongPress: () async {
                logFirebaseEvent('FOLDER_BUTTON_Text_t15wzz6l_ON_LONG_PRES');
                logFirebaseEvent('Text_bottom_sheet');
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  barrierColor: Color(0x00000000),
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: RenameFolderDialogWidget(
                        folderId: widget.path,
                        isFolder: true,
                      ),
                    );
                  },
                ).then((value) => setState(() {}));
              },
              child: Text(
                widget.name!,
                maxLines: 1,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
          ],
        ),
        if (FFAppState().isSelectionMode &&
            FFAppState().selectedFolders.contains(widget.path))
          Align(
            alignment: AlignmentDirectional(1.0, -0.9),
            child: Icon(
              Icons.check_circle_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
          ),
        if (FFAppState().isSelectionMode &&
            !FFAppState().selectedFolders.contains(widget.path))
          Align(
            alignment: AlignmentDirectional(1.0, -0.9),
            child: Icon(
              Icons.check_circle_outline_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
          ),
      ],
    );
  }
}
