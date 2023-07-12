import '/components/navigation_tree_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_bar_model.dart';
export 'edit_bar_model.dart';

class EditBarWidget extends StatefulWidget {
  const EditBarWidget({
    Key? key,
    required this.currentFolder,
  }) : super(key: key);

  final DocumentReference? currentFolder;

  @override
  _EditBarWidgetState createState() => _EditBarWidgetState();
}

class _EditBarWidgetState extends State<EditBarWidget> {
  late EditBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditBarModel());

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

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('EDIT_BAR_COMP_Container_wc382zl1_ON_TAP');
              logFirebaseEvent('Container_bottom_sheet');
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: NavigationTreeWidget(),
                  );
                },
              ).then((value) => setState(() {}));
            },
            child: Material(
              color: Colors.transparent,
              elevation: 4.0,
              shape: const CircleBorder(),
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  fillColor: FlutterFlowTheme.of(context).tertiary,
                  icon: Icon(
                    Icons.drive_file_move,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'EDIT_BAR_COMP_drive_file_move_ICN_ON_TAP');
                    logFirebaseEvent('IconButton_bottom_sheet');
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: NavigationTreeWidget(),
                        );
                      },
                    ).then((value) => setState(() {}));
                  },
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
          child: Material(
            color: Colors.transparent,
            elevation: 4.0,
            shape: const CircleBorder(),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                fillColor: FlutterFlowTheme.of(context).tertiary,
                icon: Icon(
                  Icons.file_copy,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('EDIT_BAR_COMP_file_copy_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_bottom_sheet');
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: NavigationTreeWidget(),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
              ),
            ),
          ),
        ),
        if (false)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: Material(
              color: Colors.transparent,
              elevation: 4.0,
              shape: const CircleBorder(),
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  fillColor: FlutterFlowTheme.of(context).tertiary,
                  icon: Icon(
                    Icons.file_download,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ),
          ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
          child: Material(
            color: Colors.transparent,
            elevation: 4.0,
            shape: const CircleBorder(),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                fillColor: FlutterFlowTheme.of(context).tertiary,
                icon: Icon(
                  Icons.delete_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
          child: Material(
            color: Colors.transparent,
            elevation: 4.0,
            shape: const CircleBorder(),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                fillColor: FlutterFlowTheme.of(context).customColor3,
                icon: Icon(
                  Icons.close,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 30.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('EDIT_BAR_COMP_close_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_update_app_state');
                  _model.updatePage(() {
                    FFAppState().selectedFolders = [];
                    FFAppState().isSelectionMode = false;
                    FFAppState().selecteFiles = [];
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
