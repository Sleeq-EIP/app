import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/navigation/breadcrumbs/sub_elements/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'feedback_model.dart';
export 'feedback_model.dart';

class FeedbackWidget extends StatefulWidget {
  const FeedbackWidget({Key? key}) : super(key: key);

  @override
  _FeedbackWidgetState createState() => _FeedbackWidgetState();
}

class _FeedbackWidgetState extends State<FeedbackWidget> {
  late FeedbackModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedbackModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'feedback'});
    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
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
        title: 'feedback',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.backButtonModel,
                          updateCallback: () => setState(() {}),
                          child: BackButtonWidget(),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'wwoo368v' /* Feedback Form */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineMediumFamily),
                              ),
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '13ywdpbd' /* Please provide your feedback o... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '3udtpuuu' /* Rate the following points: */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'uix9u6au' /* Ease of Use */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                            RatingBar.builder(
                              onRatingUpdate: (newValue) => setState(() =>
                                  _model.easeofuseFeedbackValue = newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.easeofuseFeedbackValue ??=
                                  0.0,
                              unratedColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              itemCount: 5,
                              itemSize: 25.0,
                              glowColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'fyczl56s' /* Quality of Features */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                            RatingBar.builder(
                              onRatingUpdate: (newValue) => setState(() =>
                                  _model.feqtureQualityFeedbackValue =
                                      newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                              direction: Axis.horizontal,
                              initialRating:
                                  _model.feqtureQualityFeedbackValue ??= 0.0,
                              unratedColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              itemCount: 5,
                              itemSize: 25.0,
                              glowColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'g5ceztgx' /* Bug-Free App */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                            RatingBar.builder(
                              onRatingUpdate: (newValue) => setState(
                                  () => _model.bugFeedbackValue = newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.bugFeedbackValue ??= 0.0,
                              unratedColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              itemCount: 5,
                              itemSize: 25.0,
                              glowColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '8ffs53fz' /* Price of Subscription Models */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                            RatingBar.builder(
                              onRatingUpdate: (newValue) => setState(
                                  () => _model.priceFeedbackValue = newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.priceFeedbackValue ??= 0.0,
                              unratedColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              itemCount: 5,
                              itemSize: 25.0,
                              glowColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'xe1lwdot' /* Have you considered paying for... */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Switch(
                              value: _model.switchValue ??= false,
                              onChanged: (newValue) async {
                                setState(() => _model.switchValue = newValue!);
                              },
                              activeColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              inactiveTrackColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              inactiveThumbColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: _model.textController1,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'bri2xpoq' /* Reason for not considering pre... */,
                              ),
                              hintText: FFLocalizations.of(context).getText(
                                '5085jd2h' /* Enter reason here... */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            maxLines: 3,
                            validator: _model.textController1Validator
                                .asValidator(context),
                          ),
                          TextFormField(
                            controller: _model.textController2,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'gxykgt96' /* Other Comments */,
                              ),
                              hintText: FFLocalizations.of(context).getText(
                                'ycq6iivk' /* Enter any additional comments ... */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            maxLines: 8,
                            validator: _model.textController2Validator
                                .asValidator(context),
                          ),
                        ].divide(SizedBox(height: 20.0)),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'FEEDBACK_PAGE_SUBMIT_BTN_ON_TAP');
                              logFirebaseEvent('Button_backend_call');
                              _model.apiResultp03 = await SendFeedbackCall.call(
                                username: currentUserDisplayName,
                                feedback: _model.textController2.text,
                                userid: currentUserUid,
                                usermail: currentUserEmail,
                                easeofuse:
                                    _model.easeofuseFeedbackValue?.round(),
                                bugfree: _model.bugFeedbackValue?.round(),
                                price: _model.priceFeedbackValue?.round(),
                                quality:
                                    _model.feqtureQualityFeedbackValue?.round(),
                                premium: _model.switchValue,
                                reasonnopremium: _model.textController1.text,
                              );
                              if ((_model.apiResultp03?.succeeded ?? true)) {
                                logFirebaseEvent('Button_navigate_back');
                                context.safePop();
                                logFirebaseEvent('Button_show_snack_bar');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Thank you for the feedback !',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }

                              setState(() {});
                            },
                            text: FFLocalizations.of(context).getText(
                              'mc303noe' /* Submit */,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    color: Colors.white,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleMediumFamily),
                                  ),
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 15.0)),
                ),
              ),
            ),
          ),
        ));
  }
}
