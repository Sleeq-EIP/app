import '/components/subscription/feature_description/feature_description_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'premium_plan_widget_model.dart';
export 'premium_plan_widget_model.dart';

class PremiumPlanWidgetWidget extends StatefulWidget {
  const PremiumPlanWidgetWidget({Key? key}) : super(key: key);

  @override
  _PremiumPlanWidgetWidgetState createState() =>
      _PremiumPlanWidgetWidgetState();
}

class _PremiumPlanWidgetWidgetState extends State<PremiumPlanWidgetWidget> {
  late PremiumPlanWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PremiumPlanWidgetModel());

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

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            FFIcons.ksleeqLogo,
            color: Colors.black,
            size: 100.0,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'wszriotl' /* Sleeq Starter */,
              ),
              style: FlutterFlowTheme.of(context).titleLarge,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                '4rajon4b' /* To discover Sleeq */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '8t5z5mb2' /* Free */,
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      fontSize: 18.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 15.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'o6ckrkk7' /* Category */,
                      ),
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelSmallFamily,
                            fontSize: 12.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelSmallFamily),
                          ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel1,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        'lfwhoe3f' /* Included documents */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'sad5z4i4' /* You can store up to 50 documen... */,
                      ),
                      value: FFLocalizations.of(context).getText(
                        '68clqyq9' /* 50 */,
                      ),
                      strikethrought: false,
                      icon: Icon(
                        Icons.not_interested,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      useIcon: false,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel2,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        '8w5xedmx' /* Max document size */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'yb9wz2vc' /* Your documents can weigh up to... */,
                      ),
                      value: '5 MB',
                      strikethrought: false,
                      icon: Icon(
                        Icons.not_interested,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      useIcon: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 15.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'd0v2otpl' /* Access from */,
                      ),
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelSmallFamily,
                            fontSize: 12.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelSmallFamily),
                          ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel3,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        '4x4gjabo' /* Smartphone */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'e9v9j74e' /* Access and upload you document... */,
                      ),
                      value: FFLocalizations.of(context).getText(
                        '10p2rw7v' /* 5 MD */,
                      ),
                      strikethrought: false,
                      icon: Icon(
                        Icons.phone_android_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      useIcon: true,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel4,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        'pic8v1y0' /* Computer */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '9anzvjk1' /* Access and upload you document... */,
                      ),
                      value: '',
                      strikethrought: false,
                      icon: Icon(
                        Icons.computer,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      useIcon: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 15.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '29is3om7' /* Import from */,
                      ),
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelSmallFamily,
                            fontSize: 12.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelSmallFamily),
                          ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel5,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        'fpboc445' /* Folder */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'ieu222cg' /* Import documents from your fol... */,
                      ),
                      value: '',
                      strikethrought: false,
                      icon: Icon(
                        Icons.folder_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      useIcon: true,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel6,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        'p5mm061p' /* Camera */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'b5m39m8j' /* Import documents using the cam... */,
                      ),
                      value: '',
                      strikethrought: false,
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      useIcon: true,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel7,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        'xzt8xhue' /* Optical Character Recognition  */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'eebhi0sm' /* Apply optical character recogn... */,
                      ),
                      value: '',
                      strikethrought: false,
                      icon: Icon(
                        Icons.find_in_page_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      useIcon: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 15.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '2wtmltbr' /* Export to */,
                      ),
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelSmallFamily,
                            fontSize: 12.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelSmallFamily),
                          ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel8,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        'mlb6waad' /* Folder */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'vqhzst3f' /* Import documents from your fol... */,
                      ),
                      value: '',
                      strikethrought: false,
                      icon: Icon(
                        Icons.folder_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      useIcon: true,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel9,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        'a29pwlsz' /* Email */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'xcjxosiq' /* Export documents to your email... */,
                      ),
                      value: '',
                      strikethrought: false,
                      icon: Icon(
                        Icons.mail_outline_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      useIcon: true,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel10,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        'y2qj1noi' /* Calender  */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'nyykm8u8' /* Export your documents to your ... */,
                      ),
                      value: '',
                      strikethrought: true,
                      icon: Icon(
                        Icons.calendar_today_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 30.0,
                      ),
                      useIcon: true,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel11,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        'qufqp7tj' /* Wallet */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'io0mi4cj' /* Export your documents to your ... */,
                      ),
                      value: '',
                      strikethrought: true,
                      icon: Icon(
                        Icons.account_balance_wallet_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 30.0,
                      ),
                      useIcon: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 15.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'bpbbm6wl' /* Personalization */,
                      ),
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelSmallFamily,
                            fontSize: 12.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelSmallFamily),
                          ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel12,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        'x1brjyyg' /* Document Categories */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'd5hauf5b' /* You only have access to the de... */,
                      ),
                      value: FFLocalizations.of(context).getText(
                        'jlc4kmb0' /* Default */,
                      ),
                      strikethrought: false,
                      icon: Icon(
                        Icons.not_interested,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      useIcon: false,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel13,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        '59gdkv6i' /* Customization */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '0jf6bl68' /* You can customize and organize... */,
                      ),
                      value: '',
                      strikethrought: true,
                      icon: Icon(
                        Icons.not_interested,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      useIcon: false,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.featureDescriptionModel14,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        '89az1hd7' /* Widget */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'tjmhlsuw' /* You get Sleeq widget for your ... */,
                      ),
                      value: '',
                      strikethrought: true,
                      icon: Icon(
                        Icons.not_interested,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      useIcon: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
