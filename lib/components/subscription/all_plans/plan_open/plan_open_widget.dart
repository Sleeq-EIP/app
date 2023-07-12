import '/components/subscription/feature_description/feature_description_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'plan_open_model.dart';
export 'plan_open_model.dart';

class PlanOpenWidget extends StatefulWidget {
  const PlanOpenWidget({Key? key}) : super(key: key);

  @override
  _PlanOpenWidgetState createState() => _PlanOpenWidgetState();
}

class _PlanOpenWidgetState extends State<PlanOpenWidget> {
  late PlanOpenModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlanOpenModel());

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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
            child: Icon(
              FFIcons.ksleeqLogo,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 120.0,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'b4jn9bha' /* Sleeq Open */,
              ),
              style: FlutterFlowTheme.of(context).titleLarge,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                '61mzqpdg' /* Unlock the full experience */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'zk9xb0w0' /* 14.99 € per month */,
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
                        'pvdrd7ch' /* Category */,
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
                        'dka100fn' /* Included documents */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'obbaumkr' /* You can store as many document... */,
                      ),
                      value: FFLocalizations.of(context).getText(
                        'hj77cnkj' /* ∞ */,
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
                        '58x4vrlf' /* Max document size */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '4pa4hi28' /* Your documents can weigh up to... */,
                      ),
                      value: '100 MB',
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
                        'bz0f9xv9' /* Access from */,
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
                        'gie9ruzr' /* Smartphone */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'b6gvdeb4' /* Access and upload you document... */,
                      ),
                      value: FFLocalizations.of(context).getText(
                        'duzazgdm' /* 5 MD */,
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
                        'bzyoln4t' /* Computer */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'd3b2k42e' /* Access and upload you document... */,
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
                        'l4yfa6xk' /* Import from */,
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
                        'k0lf19cl' /* Folder */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'vl2i1l17' /* Import documents from your fol... */,
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
                        'ngqru57y' /* Camera */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'mo327zsy' /* Import documents using the cam... */,
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
                        '5kfiiclg' /* Optical Character Recognition  */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '8w9e2tv8' /* Apply optical character recogn... */,
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
                        '2ja7c6ur' /* Export to */,
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
                        '1vfv7yth' /* Folder */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '9hdefl1j' /* Import documents from your fol... */,
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
                        'xxf0kc0t' /* Email */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '8ve2ka4m' /* Export documents to your email... */,
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
                        'hshs3fv2' /* Calender  */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'y0mwige5' /* Export your documents to your ... */,
                      ),
                      value: '',
                      strikethrought: false,
                      icon: Icon(
                        Icons.calendar_today_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
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
                        'rf73hlkl' /* Wallet */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'w4mrohhg' /* Export your documents to your ... */,
                      ),
                      value: '',
                      strikethrought: false,
                      icon: Icon(
                        Icons.account_balance_wallet_outlined,
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
                        '1bbj009t' /* Personalization */,
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
                        'pym4d8ws' /* Document Categories */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'gljwxayp' /* You have access to the default... */,
                      ),
                      value: FFLocalizations.of(context).getText(
                        '7cg9f2xu' /* ∞ Custom */,
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
                        'yongpki4' /* Customization */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'jiupgtt5' /* You can customize and organize... */,
                      ),
                      value: '',
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
                    model: _model.featureDescriptionModel14,
                    updateCallback: () => setState(() {}),
                    child: FeatureDescriptionWidget(
                      title: FFLocalizations.of(context).getText(
                        '63gpveu4' /* Widget */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'hdhbyr9w' /* You get Sleeq widget for your ... */,
                      ),
                      value: '',
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
        ],
      ),
    );
  }
}
