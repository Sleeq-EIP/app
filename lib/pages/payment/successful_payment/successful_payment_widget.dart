import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'successful_payment_model.dart';
export 'successful_payment_model.dart';

class SuccessfulPaymentWidget extends StatefulWidget {
  const SuccessfulPaymentWidget({
    Key? key,
    required this.id,
    required this.planId,
  }) : super(key: key);

  final String? id;
  final String? planId;

  @override
  _SuccessfulPaymentWidgetState createState() =>
      _SuccessfulPaymentWidgetState();
}

class _SuccessfulPaymentWidgetState extends State<SuccessfulPaymentWidget> {
  late SuccessfulPaymentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessfulPaymentModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'successfulPayment'});
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

    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        queryBuilder: (usersRecord) =>
            usersRecord.where('uid', isEqualTo: widget.id),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<UsersRecord> successfulPaymentUsersRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final successfulPaymentUsersRecord =
            successfulPaymentUsersRecordList.isNotEmpty
                ? successfulPaymentUsersRecordList.first
                : null;
        return Title(
            title: 'successfulPayment',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () =>
                  FocusScope.of(context).requestFocus(_model.unfocusNode),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                body: SafeArea(
                  top: true,
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Icon(
                            Icons.check_circle,
                            color: FlutterFlowTheme.of(context).customColor1,
                            size: 70.0,
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'osa4t63e' /* Payment successful */,
                          ),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).headlineLarge,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'SUCCESSFUL_PAYMENT_GO_BACK_TO_HOME_BTN_O');
                              logFirebaseEvent('Button_backend_call');

                              await successfulPaymentUsersRecord!.reference
                                  .update(createUsersRecordData(
                                subcriptionId: widget.planId,
                              ));
                              logFirebaseEvent('Button_navigate_to');

                              context.goNamed('HomePage');
                            },
                            text: FFLocalizations.of(context).getText(
                              'gi4un8ri' /* Go back to home page */,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
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
                      ],
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
