import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/navigation/breadcrumbs/sub_elements/back_button/back_button_widget.dart';
import '/components/navigation/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/navigation/sidebar/sidebar/sidebar_widget.dart';
import '/components/subscription/all_plans/plan_archive/plan_archive_widget.dart';
import '/components/subscription/all_plans/plan_family/plan_family_widget.dart';
import '/components/subscription/all_plans/plan_open/plan_open_widget.dart';
import '/components/subscription/all_plans/plan_plus/plan_plus_widget.dart';
import '/components/subscription/all_plans/plan_starter/plan_starter_widget.dart';
import '/components/subscription/all_plans/plan_student/plan_student_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'plan_selection_model.dart';
export 'plan_selection_model.dart';

class PlanSelectionWidget extends StatefulWidget {
  const PlanSelectionWidget({Key? key}) : super(key: key);

  @override
  _PlanSelectionWidgetState createState() => _PlanSelectionWidgetState();
}

class _PlanSelectionWidgetState extends State<PlanSelectionWidget>
    with TickerProviderStateMixin {
  late PlanSelectionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlanSelectionModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PlanSelection'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PLAN_SELECTION_PlanSelection_ON_INIT_STA');
      logFirebaseEvent('PlanSelection_update_app_state');
      setState(() {
        FFAppState().currentPage = 'PlanSelection';
      });
      logFirebaseEvent('PlanSelection_update_widget_state');
      _model.addToPlanIds('price_1LOIRbBzo7KeiEMEVUtfdh1Q');
      logFirebaseEvent('PlanSelection_update_widget_state');
      _model.addToPlanIds('price_1LOISVBzo7KeiEMEVSBv0o6K');
      logFirebaseEvent('PlanSelection_update_widget_state');
      _model.addToPlanIds('price_1LOITcBzo7KeiEMEnkarB9Hh');
      logFirebaseEvent('PlanSelection_update_widget_state');
      _model.addToPlanIds('price_1LOIS5Bzo7KeiEMEngqF20eT');
      logFirebaseEvent('PlanSelection_update_widget_state');
      _model.addToPlanIds('price_1LOITBBzo7KeiEME2Zh9tgvb');
      logFirebaseEvent('PlanSelection_update_widget_state');
      _model.addToPlanIds('price_1LOITvBzo7KeiEMEQVSVQRRi');
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        title: 'PlanSelection',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    wrapWithModel(
                      model: _model.sidebarModel,
                      updateCallback: () => setState(() {}),
                      child: SidebarWidget(),
                    ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1.0,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      offset: Offset(0.0, 0.0),
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 12.0, 24.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 70.0,
                                        height: 70.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 2.0, 2.0, 2.0),
                                          child: AuthUserStreamWidget(
                                            builder: (context) => InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'PLAN_SELECTION_Image_i7t833du_ON_TAP');
                                                logFirebaseEvent(
                                                    'Image_expand_image');
                                                await Navigator.push(
                                                  context,
                                                  PageTransition(
                                                    type:
                                                        PageTransitionType.fade,
                                                    child:
                                                        FlutterFlowExpandedImageView(
                                                      image: CachedNetworkImage(
                                                        imageUrl: currentUserPhoto !=
                                                                    null &&
                                                                currentUserPhoto !=
                                                                    ''
                                                            ? currentUserPhoto
                                                            : 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Default_pfp.svg',
                                                        fit: BoxFit.contain,
                                                      ),
                                                      allowRotation: false,
                                                      tag: currentUserPhoto !=
                                                                  null &&
                                                              currentUserPhoto !=
                                                                  ''
                                                          ? currentUserPhoto
                                                          : 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Default_pfp.svg',
                                                      useHeroAnimation: true,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Hero(
                                                tag: currentUserPhoto != null &&
                                                        currentUserPhoto != ''
                                                    ? currentUserPhoto
                                                    : 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Default_pfp.svg',
                                                transitionOnUserGestures: true,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  child: CachedNetworkImage(
                                                    imageUrl: currentUserPhoto !=
                                                                null &&
                                                            currentUserPhoto !=
                                                                ''
                                                        ? currentUserPhoto
                                                        : 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Default_pfp.svg',
                                                    width: 100.0,
                                                    height: 100.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                currentUserDisplayName !=
                                                            null &&
                                                        currentUserDisplayName !=
                                                            ''
                                                    ? currentUserDisplayName
                                                    : currentUserEmail,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                currentUserEmail,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Lexend',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily),
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
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 24.0),
                                          child: PageView(
                                            controller: _model
                                                    .pageViewController ??=
                                                PageController(initialPage: 0),
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              wrapWithModel(
                                                model: _model.planStarterModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: PlanStarterWidget(),
                                              ),
                                              wrapWithModel(
                                                model: _model.planOpenModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: PlanOpenWidget(),
                                              ),
                                              wrapWithModel(
                                                model: _model.planFamilyModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: PlanFamilyWidget(),
                                              ),
                                              wrapWithModel(
                                                model: _model.planPlusModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: PlanPlusWidget(),
                                              ),
                                              wrapWithModel(
                                                model: _model.planArchiveModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: PlanArchiveWidget(),
                                              ),
                                              wrapWithModel(
                                                model: _model.planStudentModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: PlanStudentWidget(),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 10.0),
                                            child: smooth_page_indicator
                                                .SmoothPageIndicator(
                                              controller:
                                                  _model.pageViewController ??=
                                                      PageController(
                                                          initialPage: 0),
                                              count: 6,
                                              axisDirection: Axis.horizontal,
                                              onDotClicked: (i) async {
                                                await _model.pageViewController!
                                                    .animateToPage(
                                                  i,
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              effect: smooth_page_indicator
                                                  .ExpandingDotsEffect(
                                                expansionFactor: 2.0,
                                                spacing: 8.0,
                                                radius: 16.0,
                                                dotWidth: 16.0,
                                                dotHeight: 4.0,
                                                dotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                activeDotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                paintStyle: PaintingStyle.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 0.0, 16.0),
                                  child: wrapWithModel(
                                    model: _model.backButtonModel,
                                    updateCallback: () => setState(() {}),
                                    child: BackButtonWidget(),
                                  ),
                                ),
                                if ((_model.pageViewCurrentIndex != 5) &&
                                    responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ))
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PLAN_SELECTION_Container_sc7s6w0b_ON_TAP');
                                        if (_model.pageViewCurrentIndex != 5) {
                                          logFirebaseEvent(
                                              'Container_page_view');
                                          await _model.pageViewController
                                              ?.nextPage(
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.ease,
                                          );
                                          if (_model.pageViewCurrentIndex ==
                                              5) {
                                            logFirebaseEvent(
                                                'Container_widget_animation');
                                            if (animationsMap[
                                                    'containerOnActionTriggerAnimation1'] !=
                                                null) {
                                              await animationsMap[
                                                      'containerOnActionTriggerAnimation1']!
                                                  .controller
                                                  .reverse();
                                            }
                                          }
                                        }
                                      },
                                      child: Container(
                                        width: 100.0,
                                        height: 200.0,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 20.0,
                                              color: Theme.of(context)
                                                          .brightness ==
                                                      Brightness.light
                                                  ? Color(0x22000000)
                                                  : Colors.white,
                                              offset: Offset(-10.0, 0.0),
                                              spreadRadius: 1.0,
                                            )
                                          ],
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(50.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(50.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        child: MouseRegion(
                                          opaque: false,
                                          cursor: MouseCursor.defer ??
                                              MouseCursor.defer,
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 100.0,
                                            ),
                                          ),
                                          onEnter: ((event) async {
                                            setState(() => _model
                                                .mouseRegionHovered1 = true);
                                            logFirebaseEvent(
                                                'PLAN_SELECTION_MouseRegion_4b29cekm_ON_T');
                                            if (_model.pageViewCurrentIndex !=
                                                5) {
                                              logFirebaseEvent(
                                                  'MouseRegion_widget_animation');
                                              if (animationsMap[
                                                      'containerOnActionTriggerAnimation1'] !=
                                                  null) {
                                                await animationsMap[
                                                        'containerOnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                            }
                                          }),
                                          onExit: ((event) async {
                                            setState(() => _model
                                                .mouseRegionHovered1 = false);
                                            logFirebaseEvent(
                                                'PLAN_SELECTION_MouseRegion_4b29cekm_ON_T');
                                            logFirebaseEvent(
                                                'MouseRegion_widget_animation');
                                            if (animationsMap[
                                                    'containerOnActionTriggerAnimation1'] !=
                                                null) {
                                              await animationsMap[
                                                      'containerOnActionTriggerAnimation1']!
                                                  .controller
                                                  .reverse();
                                            }
                                          }),
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'containerOnActionTriggerAnimation1']!,
                                    ),
                                  ),
                                if ((_model.pageViewCurrentIndex != 0) &&
                                    responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ))
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PLAN_SELECTION_Container_dlbms5m2_ON_TAP');
                                        if (_model.pageViewCurrentIndex != 0) {
                                          logFirebaseEvent(
                                              'Container_page_view');
                                          await _model.pageViewController
                                              ?.previousPage(
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.ease,
                                          );
                                          if (_model.pageViewCurrentIndex ==
                                              5) {
                                            logFirebaseEvent(
                                                'Container_widget_animation');
                                            if (animationsMap[
                                                    'containerOnActionTriggerAnimation1'] !=
                                                null) {
                                              await animationsMap[
                                                      'containerOnActionTriggerAnimation1']!
                                                  .controller
                                                  .reverse();
                                            }
                                          }
                                        }
                                      },
                                      child: Container(
                                        width: 100.0,
                                        height: 200.0,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 20.0,
                                              color: Theme.of(context)
                                                          .brightness ==
                                                      Brightness.light
                                                  ? Color(0xFF220000)
                                                  : Colors.white,
                                              offset: Offset(10.0, 0.0),
                                              spreadRadius: 0.0,
                                            )
                                          ],
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(50.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(50.0),
                                          ),
                                        ),
                                        child: MouseRegion(
                                          opaque: false,
                                          cursor: MouseCursor.defer ??
                                              MouseCursor.defer,
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Icon(
                                              Icons.arrow_back_ios_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 100.0,
                                            ),
                                          ),
                                          onEnter: ((event) async {
                                            setState(() => _model
                                                .mouseRegionHovered2 = true);
                                            logFirebaseEvent(
                                                'PLAN_SELECTION_MouseRegion_88t51mr8_ON_T');
                                            if (_model.pageViewCurrentIndex !=
                                                0) {
                                              logFirebaseEvent(
                                                  'MouseRegion_widget_animation');
                                              if (animationsMap[
                                                      'containerOnActionTriggerAnimation2'] !=
                                                  null) {
                                                await animationsMap[
                                                        'containerOnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                            }
                                          }),
                                          onExit: ((event) async {
                                            setState(() => _model
                                                .mouseRegionHovered2 = false);
                                            logFirebaseEvent(
                                                'PLAN_SELECTION_MouseRegion_88t51mr8_ON_T');
                                            logFirebaseEvent(
                                                'MouseRegion_widget_animation');
                                            if (animationsMap[
                                                    'containerOnActionTriggerAnimation2'] !=
                                                null) {
                                              await animationsMap[
                                                      'containerOnActionTriggerAnimation2']!
                                                  .controller
                                                  .reverse();
                                            }
                                          }),
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'containerOnActionTriggerAnimation2']!,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 15.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'PLAN_SELECTION_PAGE_SUBSCRIBE_BTN_ON_TAP');
                              logFirebaseEvent('Button_backend_call');
                              _model.apiResult = await StripeAPIGroup
                                  .createPaymentLinkCall
                                  .call(
                                priceId:
                                    _model.planIds[_model.pageViewCurrentIndex],
                                successfulUrl: functions.createDynamicLink(
                                    FFAppState().dynamicLinkDomain,
                                    FFAppState().packageName,
                                    'successfulPayment',
                                    'id=${currentUserUid}&planId=${_model.planIds[_model.pageViewCurrentIndex]}'),
                                cancelUrl: functions.createDynamicLink(
                                    FFAppState().dynamicLinkDomain,
                                    FFAppState().packageName,
                                    'cancelPayment',
                                    ''),
                              );
                              if ((_model.apiResult?.succeeded ?? true)) {
                                logFirebaseEvent('Button_update_app_state');
                                FFAppState().paymentLink = getJsonField(
                                  (_model.apiResult?.jsonBody ?? ''),
                                  r'''$.url''',
                                ).toString();
                                logFirebaseEvent('Button_launch_u_r_l');
                                await launchURL(getJsonField(
                                  (_model.apiResult?.jsonBody ?? ''),
                                  r'''$.url''',
                                ).toString());
                              }

                              setState(() {});
                            },
                            text: FFLocalizations.of(context).getText(
                              'tq6yi8cb' /* Subscribe */,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.white,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          wrapWithModel(
                            model: _model.navBarFlotingModel,
                            updateCallback: () => setState(() {}),
                            child: NavBarFlotingWidget(
                              canAddFile: false,
                              currentFolder: null,
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
