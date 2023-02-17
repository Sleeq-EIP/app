import '../auth/auth_util.dart';
import '../components/sleeq_logo_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_language_selector.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'newnav_model.dart';
export 'newnav_model.dart';

class NewnavWidget extends StatefulWidget {
  const NewnavWidget({Key? key}) : super(key: key);

  @override
  _NewnavWidgetState createState() => _NewnavWidgetState();
}

class _NewnavWidgetState extends State<NewnavWidget>
    with TickerProviderStateMixin {
  late NewnavModel _model;

  final animationsMap = {
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 0),
          end: Offset(115, 0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewnavModel());

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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
          child: wrapWithModel(
            model: _model.sleeqLogoModel,
            updateCallback: () => setState(() {}),
            child: SleeqLogoWidget(
              color: FlutterFlowTheme.of(context).primaryText,
              withText: true,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
          child: InkWell(
            onTap: () async {
              logFirebaseEvent('NEWNAV_COMP_contentView_1_ON_TAP');
              if (('launch://sleeq.app${GoRouter.of(context).location}' !=
                      'launch://sleeq.app/homePage') ||
                  ('launch://sleeq.app${GoRouter.of(context).location}' !=
                      'launch://sleeq.app/')) {
                context.pushNamed(
                  'HomePage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );

                return;
              } else {
                return;
              }
            },
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(0),
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 16, 8),
                      child: Container(
                        width: 4,
                        height: 100,
                        decoration: BoxDecoration(
                          color: ('launch://sleeq.app${GoRouter.of(context).location}' ==
                                      'launch://sleeq.app/homePage') ||
                                  ('launch://sleeq.app${GoRouter.of(context).location}' ==
                                      'launch://sleeq.app/')
                              ? FlutterFlowTheme.of(context).primaryColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(4),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(4),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.home_filled,
                      color: ('launch://sleeq.app${GoRouter.of(context).location}' ==
                                  'launch://sleeq.app/homePage') ||
                              ('launch://sleeq.app${GoRouter.of(context).location}' ==
                                  'launch://sleeq.app/')
                          ? FlutterFlowTheme.of(context).primaryColor
                          : FlutterFlowTheme.of(context).secondaryText,
                      size: 28,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '6dt9sj2x' /* Home */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).subtitle2Family,
                              color: ('launch://sleeq.app${GoRouter.of(context).location}' ==
                                          'launch://sleeq.app/homePage') ||
                                      ('launch://sleeq.app${GoRouter.of(context).location}' ==
                                          'launch://sleeq.app/')
                                  ? FlutterFlowTheme.of(context).primaryColor
                                  : FlutterFlowTheme.of(context).secondaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
          child: InkWell(
            onTap: () async {
              logFirebaseEvent('NEWNAV_COMP_contentView_1_ON_TAP');
              if ('launch://sleeq.app${GoRouter.of(context).location}' !=
                  'launch://sleeq.app/settings') {
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
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(12),
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 16, 8),
                      child: Container(
                        width: 4,
                        height: 100,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            'launch://sleeq.app${GoRouter.of(context).location}' ==
                                    'launch://sleeq.app/settings'
                                ? FlutterFlowTheme.of(context).primaryColor
                                : Colors.transparent,
                            FlutterFlowTheme.of(context).primaryColor,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(4),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(4),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.settings,
                      color:
                          'launch://sleeq.app${GoRouter.of(context).location}' ==
                                  'launch://sleeq.app/settings'
                              ? FlutterFlowTheme.of(context).primaryColor
                              : FlutterFlowTheme.of(context).secondaryText,
                      size: 28,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'rdg8q5en' /* Settings */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).subtitle2Family,
                              color:
                                  'launch://sleeq.app${GoRouter.of(context).location}' ==
                                          'launch://sleeq.app/settings'
                                      ? FlutterFlowTheme.of(context)
                                          .primaryColor
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (false)
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: FFLocalizations.of(context).getText(
                        'joolq3hb' /* Upload a file */,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).subtitle2Family,
                              color: Colors.white,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                  child: FlutterFlowLanguageSelector(
                    width: double.infinity,
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    borderColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    dropdownColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    dropdownIconColor: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: 12,
                    textStyle: GoogleFonts.getFont(
                      'Lexend',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                    hideFlags: false,
                    flagSize: 24,
                    flagTextGap: 8,
                    currentLanguage: FFLocalizations.of(context).languageCode,
                    languages: FFLocalizations.languages(),
                    onChanged: (lang) => setAppLanguage(context, lang),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () async {
                              logFirebaseEvent(
                                  'NEWNAV_COMP_Container_qi7oooxg_ON_TAP');
                              setDarkModeSetting(context, ThemeMode.light);
                            },
                            child: Container(
                              width: 115,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Theme.of(context).brightness ==
                                        Brightness.light
                                    ? FlutterFlowTheme.of(context)
                                        .secondaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? FlutterFlowTheme.of(context)
                                          .lineColorOld
                                      : FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.wb_sunny_rounded,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? FlutterFlowTheme.of(context)
                                            .primaryText
                                        : FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    size: 16,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4, 0, 0, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'wzfdn71s' /* Light Mode */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family,
                                            color: Theme.of(context)
                                                        .brightness ==
                                                    Brightness.light
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryText
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              logFirebaseEvent(
                                  'NEWNAV_COMP_Container_dfq5jmd1_ON_TAP');
                              setDarkModeSetting(context, ThemeMode.dark);
                            },
                            child: Container(
                              width: 115,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? FlutterFlowTheme.of(context)
                                        .secondaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? FlutterFlowTheme.of(context)
                                          .lineColorOld
                                      : FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.nightlight_round,
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? FlutterFlowTheme.of(context)
                                            .primaryText
                                        : FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    size: 16,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4, 0, 0, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'b82qzcwq' /* Dark Mode */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family,
                                            color: Theme.of(context)
                                                        .brightness ==
                                                    Brightness.dark
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryText
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap['containerOnActionTriggerAnimation']!,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 12,
                  thickness: 2,
                  color: FlutterFlowTheme.of(context).lineColorOld,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      AuthUserStreamWidget(
                        builder: (context) => ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: CachedNetworkImage(
                            imageUrl: currentUserPhoto != null &&
                                    currentUserPhoto != ''
                                ? currentUserPhoto
                                : 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Default_pfp.svg',
                            width: 44,
                            height: 44,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  currentUserDisplayName != null &&
                                          currentUserDisplayName != ''
                                      ? currentUserDisplayName
                                      : currentUserEmail,
                                  style: FlutterFlowTheme.of(context).subtitle1,
                                ),
                              ),
                              SelectionArea(
                                  child: AutoSizeText(
                                currentUserEmail,
                                maxLines: 2,
                                style: FlutterFlowTheme.of(context).bodyText2,
                              )),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'NEWNAV_COMP_Text_bbgazute_ON_TAP');
                                    GoRouter.of(context).prepareAuthEvent();
                                    await signOut();

                                    context.goNamedAuth('Login', mounted);
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ho44eh4t' /* Logout */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2Family,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2Family),
                                        ),
                                  ),
                                ),
                              ),
                            ],
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
      ],
    );
  }
}
