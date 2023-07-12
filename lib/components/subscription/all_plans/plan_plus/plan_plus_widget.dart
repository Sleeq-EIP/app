import '/components/subscription/feature_description/feature_description_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'plan_plus_model.dart';
export 'plan_plus_model.dart';

class PlanPlusWidget extends StatefulWidget {
  const PlanPlusWidget({Key? key}) : super(key: key);

  @override
  _PlanPlusWidgetState createState() => _PlanPlusWidgetState();
}

class _PlanPlusWidgetState extends State<PlanPlusWidget> {
  late PlanPlusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlanPlusModel());

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
                '3bmwaqdo' /* Sleeq Plus */,
              ),
              style: FlutterFlowTheme.of(context).titleLarge,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'un4s5v2h' /* For storage fans */,
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
                  'hwl466l9' /* 10.99 € per month */,
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
                        'c7sw9r7d' /* Category */,
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
                        'y1jfj8f2' /* Included documents */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'xgbxty2i' /* You can store as many document... */,
                      ),
                      value: FFLocalizations.of(context).getText(
                        'xyhqlqp4' /* ∞ */,
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
                        'zojsbwug' /* Max document size */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'fzp2waka' /* Your documents can weigh up to... */,
                      ),
                      value: '50 MB',
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
                        'u6enclmq' /* Access from */,
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
                        '5h3a9jj2' /* Smartphone */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'pevy9qwl' /* Access and upload you document... */,
                      ),
                      value: FFLocalizations.of(context).getText(
                        '6rgevgae' /* 5 MD */,
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
                        'ndemd64w' /* Computer */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '1bp1m3aj' /* Access and upload you document... */,
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
                        '5f4v1b7g' /* Import from */,
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
                        'x7mlky96' /* Folder */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'o20ryzgf' /* Import documents from your fol... */,
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
                        'qbords3x' /* Camera */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '9ehfx6qs' /* Import documents using the cam... */,
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
                        '04j6sacv' /* Optical Character Recognition  */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '3yzb3g7m' /* Apply optical character recogn... */,
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
                        'an9ij6vt' /* Export to */,
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
                        'zhfb9fuj' /* Folder */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '7slc315w' /* Import documents from your fol... */,
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
                        '7jds73k6' /* Email */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'yjp7honc' /* Export documents to your email... */,
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
                        '719sr3dv' /* Calender  */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'rpog2rsf' /* Export your documents to your ... */,
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
                        'va46hbu0' /* Wallet */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'px1f63ym' /* Export your documents to your ... */,
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
                        '23fdnpjv' /* Personalization */,
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
                        '5mo9tety' /* Document Categories */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'tkdvz9vq' /* You have access to the default... */,
                      ),
                      value: FFLocalizations.of(context).getText(
                        'escze8pn' /* ∞ Custom */,
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
                        'rh95gb3q' /* Customization */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'ospfoqvv' /* You can customize and organize... */,
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
                        'brss592u' /* Widget */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '6bojlfsb' /* You get Sleeq widget for your ... */,
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
