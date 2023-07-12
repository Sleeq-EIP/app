import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'feature_description_model.dart';
export 'feature_description_model.dart';

class FeatureDescriptionWidget extends StatefulWidget {
  const FeatureDescriptionWidget({
    Key? key,
    this.title,
    this.description,
    this.value,
    bool? strikethrought,
    this.icon,
    bool? useIcon,
  })  : this.strikethrought = strikethrought ?? false,
        this.useIcon = useIcon ?? false,
        super(key: key);

  final String? title;
  final String? description;
  final String? value;
  final bool strikethrought;
  final Widget? icon;
  final bool useIcon;

  @override
  _FeatureDescriptionWidgetState createState() =>
      _FeatureDescriptionWidgetState();
}

class _FeatureDescriptionWidgetState extends State<FeatureDescriptionWidget> {
  late FeatureDescriptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeatureDescriptionModel());

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

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!widget.strikethrought)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 0.0),
                      child: Text(
                        widget.title!,
                        style: FlutterFlowTheme.of(context).labelLarge,
                      ),
                    ),
                  if (!widget.strikethrought)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 10.0),
                      child: Text(
                        widget.description!,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  if (widget.strikethrought)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 0.0),
                      child: Text(
                        widget.title!,
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              decoration: TextDecoration.lineThrough,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .labelLargeFamily),
                            ),
                      ),
                    ),
                  if (widget.strikethrought)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 10.0),
                      child: Text(
                        widget.description!,
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
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
            ),
            child: Stack(
              alignment: AlignmentDirectional(1.0, -1.0),
              children: [
                if (!widget.useIcon && !widget.strikethrought)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 20.0, 0.0),
                    child: Text(
                      widget.value!,
                      style: FlutterFlowTheme.of(context).labelLarge,
                    ),
                  ),
                if (!widget.useIcon && widget.strikethrought)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 20.0, 0.0),
                    child: Text(
                      widget.value!,
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelLargeFamily),
                          ),
                    ),
                  ),
                if (widget.useIcon)
                  Align(
                    alignment: AlignmentDirectional(0.95, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 0.0),
                      child: widget.icon!,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
