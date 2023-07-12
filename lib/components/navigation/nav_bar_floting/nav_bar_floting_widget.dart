import '/components/popups/add_modal/add_modal_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bar_floting_model.dart';
export 'nav_bar_floting_model.dart';

class NavBarFlotingWidget extends StatefulWidget {
  const NavBarFlotingWidget({
    Key? key,
    bool? canAddFile,
    this.currentFolder,
  })  : this.canAddFile = canAddFile ?? true,
        super(key: key);

  final bool canAddFile;
  final DocumentReference? currentFolder;

  @override
  _NavBarFlotingWidgetState createState() => _NavBarFlotingWidgetState();
}

class _NavBarFlotingWidgetState extends State<NavBarFlotingWidget> {
  late NavBarFlotingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarFlotingModel());

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

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 12.0,
                color: Color(0x33000000),
                offset: Offset(0.0, 5.0),
              )
            ],
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2.0,
                sigmaY: 2.0,
              ),
              child: Container(
                width: double.infinity,
                height: 70.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: FaIcon(
                          FontAwesomeIcons.home,
                          color: FFAppState().currentPage == 'HomePage'
                              ? FlutterFlowTheme.of(context).tertiary
                              : FlutterFlowTheme.of(context).primaryText,
                          size: 25.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'NAV_BAR_FLOTING_COMP_home_ICN_ON_TAP');
                          if (FFAppState().currentPage != 'HomePage') {
                            logFirebaseEvent('IconButton_update_app_state');
                            setState(() {
                              FFAppState().selectedFolders = [];
                              FFAppState().isSelectionMode = false;
                              FFAppState().selecteFiles = [];
                            });
                            logFirebaseEvent('IconButton_navigate_to');

                            context.goNamed(
                              'HomePage',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          }
                        },
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 50.0,
                        fillColor: FlutterFlowTheme.of(context).tertiary,
                        disabledColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        disabledIconColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        icon: Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 30.0,
                        ),
                        onPressed: !widget.canAddFile
                            ? null
                            : () async {
                                logFirebaseEvent(
                                    'NAV_BAR_FLOTING_COMP_add_ICN_ON_TAP');
                                if (widget.canAddFile) {
                                  logFirebaseEvent('IconButton_bottom_sheet');
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    isDismissible: false,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: AddModalWidget(
                                          currentFolder: widget.currentFolder,
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));

                                  return;
                                } else {
                                  return;
                                }
                              },
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.settings,
                          color: FFAppState().currentPage == 'Settings'
                              ? FlutterFlowTheme.of(context).tertiary
                              : FlutterFlowTheme.of(context).primaryText,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'NAV_BAR_FLOTING_COMP_settings_ICN_ON_TAP');
                          if (FFAppState().currentPage != 'Settings') {
                            logFirebaseEvent('IconButton_navigate_to');

                            context.pushNamed(
                              'Settings',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
