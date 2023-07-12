import '/backend/backend.dart';
import '/components/buttons/edit_bar/edit_bar_widget.dart';
import '/components/buttons/file_button_list_mode/file_button_list_mode_widget.dart';
import '/components/buttons/folder_button_list_mode/folder_button_list_mode_widget.dart';
import '/components/buttons/new_button/new_button_widget.dart';
import '/components/navigation/breadcrumbs/breadcrumbs/breadcrumbs_widget.dart';
import '/components/navigation/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/navigation/sidebar/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'folders_model.dart';
export 'folders_model.dart';

class FoldersWidget extends StatefulWidget {
  const FoldersWidget({
    Key? key,
    required this.currentFolder,
    required this.folderNames,
  }) : super(key: key);

  final DocumentReference? currentFolder;
  final List<String>? folderNames;

  @override
  _FoldersWidgetState createState() => _FoldersWidgetState();
}

class _FoldersWidgetState extends State<FoldersWidget> {
  late FoldersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoldersModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'folders'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FOLDERS_PAGE_folders_ON_INIT_STATE');
      logFirebaseEvent('folders_update_app_state');
      setState(() {
        FFAppState().currentPage = 'Folders';
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
        title: 'your folders',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      wrapWithModel(
                        model: _model.sidebarModel,
                        updateCallback: () => setState(() {}),
                        child: SidebarWidget(),
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            StreamBuilder<FoldersRecord>(
                              stream: FoldersRecord.getDocument(
                                  widget.currentFolder!),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                                final columnFoldersRecord = snapshot.data!;
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.breadcrumbsModel,
                                        updateCallback: () => setState(() {}),
                                        child: BreadcrumbsWidget(
                                          folderNames: widget.folderNames,
                                          isHomeScreen: false,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'w9d5ah2c' /* Grid View */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Switch.adaptive(
                                            value: _model.switchValue ??=
                                                FFAppState().gridView,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                  .switchValue = newValue!);
                                              if (newValue!) {
                                                logFirebaseEvent(
                                                    'FOLDERS_Switch_mk7eh8gv_ON_TOGGLE_ON');
                                                logFirebaseEvent(
                                                    'Switch_update_app_state');
                                                FFAppState().gridView = true;
                                              } else {
                                                logFirebaseEvent(
                                                    'FOLDERS_Switch_mk7eh8gv_ON_TOGGLE_OFF');
                                                logFirebaseEvent(
                                                    'Switch_update_app_state');
                                                FFAppState().gridView = false;
                                              }
                                            },
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            activeTrackColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            inactiveTrackColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            inactiveThumbColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (_model.switchValue ?? true)
                                      Expanded(
                                        child: StreamBuilder<FoldersRecord>(
                                          stream: FoldersRecord.getDocument(
                                              widget.currentFolder!),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                ),
                                              );
                                            }
                                            final responsiveGridFoldersRecord =
                                                snapshot.data!;
                                            return Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: double.infinity,
                                              child:
                                                  custom_widgets.ResponsiveGrid(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height: double.infinity,
                                                folders:
                                                    responsiveGridFoldersRecord
                                                        .folders,
                                                files:
                                                    responsiveGridFoldersRecord
                                                        .files,
                                                folderNamesList:
                                                    widget.folderNames!,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    if (!_model.switchValue!)
                                      Builder(
                                        builder: (context) {
                                          final folder = columnFoldersRecord
                                              .folders
                                              .toList();
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                folder.length, (folderIndex) {
                                              final folderItem =
                                                  folder[folderIndex];
                                              return StreamBuilder<
                                                  FoldersRecord>(
                                                stream:
                                                    FoldersRecord.getDocument(
                                                        folderItem),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final folderButtonListModeFoldersRecord =
                                                      snapshot.data!;
                                                  return FolderButtonListModeWidget(
                                                    key: Key(
                                                        'Key0md_${folderIndex}_of_${folder.length}'),
                                                    name:
                                                        folderButtonListModeFoldersRecord
                                                            .name,
                                                    color:
                                                        folderButtonListModeFoldersRecord
                                                            .color!,
                                                    path:
                                                        folderButtonListModeFoldersRecord
                                                            .reference,
                                                    previousFolders:
                                                        widget.folderNames!,
                                                  );
                                                },
                                              );
                                            }),
                                          );
                                        },
                                      ),
                                    if (!_model.switchValue!)
                                      Builder(
                                        builder: (context) {
                                          final file = columnFoldersRecord.files
                                              .toList();
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(file.length,
                                                (fileIndex) {
                                              final fileItem = file[fileIndex];
                                              return StreamBuilder<FilesRecord>(
                                                stream: FilesRecord.getDocument(
                                                    fileItem),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final fileButtonListModeFilesRecord =
                                                      snapshot.data!;
                                                  return FileButtonListModeWidget(
                                                    key: Key(
                                                        'Keyddp_${fileIndex}_of_${file.length}'),
                                                    name:
                                                        fileButtonListModeFilesRecord
                                                            .name,
                                                    color:
                                                        fileButtonListModeFilesRecord
                                                            .color!,
                                                    document:
                                                        fileButtonListModeFilesRecord,
                                                  );
                                                },
                                              );
                                            }),
                                          );
                                        },
                                      ),
                                  ],
                                );
                              },
                            ),
                            if (FFAppState().isSelectionMode)
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: wrapWithModel(
                                    model: _model.editBarModel,
                                    updateCallback: () => setState(() {}),
                                    child: EditBarWidget(
                                      currentFolder: widget.currentFolder!,
                                    ),
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: wrapWithModel(
                                  model: _model.navBarFlotingModel,
                                  updateCallback: () => setState(() {}),
                                  child: NavBarFlotingWidget(
                                    canAddFile: true,
                                    currentFolder: widget.currentFolder,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.0, 1.0),
                    child: wrapWithModel(
                      model: _model.newButtonModel,
                      updateCallback: () => setState(() {}),
                      child: NewButtonWidget(
                        currentFolder: widget.currentFolder!,
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
