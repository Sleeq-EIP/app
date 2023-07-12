import '/auth/firebase_auth/auth_util.dart';
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
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shake/shake.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late ShakeDetector shakeDetector;
  var shakeActionInProgress = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HomePage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('HOME_PAGE_PAGE_HomePage_ON_INIT_STATE');
      logFirebaseEvent('HomePage_custom_action');
      await actions.lockOrientation();
      logFirebaseEvent('HomePage_update_app_state');
      setState(() {
        FFAppState().currentPage = 'HomePage';
      });
    });

    // On shake action.
    shakeDetector = ShakeDetector.autoStart(
      onPhoneShake: () async {
        if (shakeActionInProgress) {
          return;
        }
        shakeActionInProgress = true;
        try {
          logFirebaseEvent('HOME_PAGE_PAGE_HomePage_ON_PHONE_SHAKE');
          logFirebaseEvent('HomePage_action_block');
          await action_blocks.bugReport(context);
        } finally {
          shakeActionInProgress = false;
        }
      },
      shakeThresholdGravity: 1.5,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    shakeDetector.stopListening();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'HomePage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                  Expanded(
                    child: Stack(
                      children: [
                        AuthUserStreamWidget(
                          builder: (context) => StreamBuilder<FoldersRecord>(
                            stream: FoldersRecord.getDocument(
                                currentUserDocument!.rootFolder!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                );
                              }
                              final columnFoldersRecord = snapshot.data!;
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.breadcrumbsModel,
                                      updateCallback: () => setState(() {}),
                                      updateOnChange: true,
                                      child: BreadcrumbsWidget(
                                        isHomeScreen: true,
                                        folderNames: List.generate(
                                            random_data.randomInteger(0, 0),
                                            (index) => random_data.randomName(
                                                true, true)),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'yjm0b1dl' /* Grid View */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: Switch.adaptive(
                                          value: _model.switchValue ??=
                                              FFAppState().gridView,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                _model.switchValue = newValue!);
                                            if (newValue!) {
                                              logFirebaseEvent(
                                                  'HOME_Switch_42tblfqi_ON_TOGGLE_ON');
                                              logFirebaseEvent(
                                                  'Switch_update_app_state');
                                              FFAppState().gridView = true;
                                            } else {
                                              logFirebaseEvent(
                                                  'HOME_Switch_42tblfqi_ON_TOGGLE_OFF');
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
                                      child: FutureBuilder<FoldersRecord>(
                                        future: FFAppState().homegrid(
                                          overrideCache: true,
                                          requestFn: () =>
                                              FoldersRecord.getDocumentOnce(
                                                  currentUserDocument!
                                                      .rootFolder!),
                                        ),
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
                                            width: double.infinity,
                                            height: double.infinity,
                                            child:
                                                custom_widgets.ResponsiveGrid(
                                              width: double.infinity,
                                              height: double.infinity,
                                              folders:
                                                  responsiveGridFoldersRecord
                                                      .folders,
                                              files: responsiveGridFoldersRecord
                                                  .files,
                                              folderNamesList: List.generate(
                                                  random_data.randomInteger(
                                                      0, 0),
                                                  (index) => random_data
                                                      .randomName(true, true)),
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
                                          children: List.generate(folder.length,
                                              (folderIndex) {
                                            final folderItem =
                                                folder[folderIndex];
                                            return StreamBuilder<FoldersRecord>(
                                              stream: FoldersRecord.getDocument(
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                final folderButtonListModeFoldersRecord =
                                                    snapshot.data!;
                                                return FolderButtonListModeWidget(
                                                  key: Key(
                                                      'Keyuml_${folderIndex}_of_${folder.length}'),
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
                                                      List.generate(
                                                          random_data
                                                              .randomInteger(
                                                                  0, 0),
                                                          (index) => random_data
                                                                  .randomString(
                                                                0,
                                                                0,
                                                                true,
                                                                false,
                                                                false,
                                                              )),
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
                                        final file =
                                            columnFoldersRecord.files.toList();
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                final fileButtonListModeFilesRecord =
                                                    snapshot.data!;
                                                return FileButtonListModeWidget(
                                                  key: Key(
                                                      'Keyqyc_${fileIndex}_of_${file.length}'),
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
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (FFAppState().isSelectionMode)
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => wrapWithModel(
                                        model: _model.editBarModel,
                                        updateCallback: () => setState(() {}),
                                        child: EditBarWidget(
                                          currentFolder:
                                              currentUserDocument!.rootFolder!,
                                        ),
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
                                  child: AuthUserStreamWidget(
                                    builder: (context) => wrapWithModel(
                                      model: _model.navBarFlotingModel,
                                      updateCallback: () => setState(() {}),
                                      child: NavBarFlotingWidget(
                                        canAddFile: true,
                                        currentFolder:
                                            currentUserDocument?.rootFolder,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        AuthUserStreamWidget(
                          builder: (context) => wrapWithModel(
                            model: _model.newButtonModel,
                            updateCallback: () => setState(() {}),
                            child: NewButtonWidget(
                              currentFolder: currentUserDocument!.rootFolder!,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
