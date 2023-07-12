import '/components/subscription/feature_description/feature_description_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'plan_family_model.dart';
export 'plan_family_model.dart';

class PlanFamilyWidget extends StatefulWidget {
  const PlanFamilyWidget({Key? key}) : super(key: key);

  @override
  _PlanFamilyWidgetState createState() => _PlanFamilyWidgetState();
}

class _PlanFamilyWidgetState extends State<PlanFamilyWidget> {
  late PlanFamilyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlanFamilyModel());

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
                'bo4f0xl2' /* Sleeq Family */,
              ),
              style: FlutterFlowTheme.of(context).titleLarge,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                '5cp455ub' /* For 4 members of the family */,
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
                  'lj5paxa8' /* 19.99 € per month */,
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
                        '1a9x2awl' /* Category */,
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
                        '9zxh3k8s' /* Included documents */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '8dpf80z4' /* Each member can store 75 docum... */,
                      ),
                      value: FFLocalizations.of(context).getText(
                        '56wdwv00' /* 75 x 4  */,
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
                        '2bbuugnk' /* Max document size */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'av9dkv0f' /* Your documents can weigh up to... */,
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
                        'jr29we1u' /* Access from */,
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
                        'powwvta6' /* Smartphone */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '4k3zq5gk' /* Access and upload you document... */,
                      ),
                      value: FFLocalizations.of(context).getText(
                        '5ugj395m' /* 5 MD */,
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
                        'rv928oc3' /* Computer */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'kexupvum' /* Access and upload you document... */,
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
                        'czfx1lv6' /* Import from */,
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
                        'qgb1hmcj' /* Folder */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '56gywn16' /* Import documents from your fol... */,
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
                        'jgd99lpe' /* Camera */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'm323y3vi' /* Import documents using the cam... */,
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
                        'kjlr1k0c' /* Optical Character Recognition  */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'cbhqgow9' /* Apply optical character recogn... */,
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
                        'jcvzav3q' /* Export to */,
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
                        'kdcja81a' /* Folder */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'rbhvua7o' /* Import documents from your fol... */,
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
                        'jw7rayt2' /* Email */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'csbvace6' /* Export documents to your email... */,
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
                        '53wn8d6j' /* Calender  */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'f0w3tscc' /* Export your documents to your ... */,
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
                        'm5wqqpj8' /* Wallet */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'cx25aiuy' /* Export your documents to your ... */,
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
                        '7d4qwul7' /* Personalization */,
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
                        '3pv97cg1' /* Document Categories */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'r6f36kww' /* You have access to the default... */,
                      ),
                      value: FFLocalizations.of(context).getText(
                        'gg5wwb31' /* ∞ Custom */,
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
                        '0xjtg3gk' /* Customization */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        '1gu2ypr8' /* You can customize and organize... */,
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
                        'gflz1pwh' /* Widget */,
                      ),
                      description: FFLocalizations.of(context).getText(
                        'c0tpfyn5' /* You get Sleeq widget for your ... */,
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
