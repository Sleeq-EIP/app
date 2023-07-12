import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'file_button_list_mode_model.dart';
export 'file_button_list_mode_model.dart';

class FileButtonListModeWidget extends StatefulWidget {
  const FileButtonListModeWidget({
    Key? key,
    required this.name,
    required this.color,
    required this.document,
  }) : super(key: key);

  final String? name;
  final Color? color;
  final FilesRecord? document;

  @override
  _FileButtonListModeWidgetState createState() =>
      _FileButtonListModeWidgetState();
}

class _FileButtonListModeWidgetState extends State<FileButtonListModeWidget> {
  late FileButtonListModeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FileButtonListModeModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          logFirebaseEvent('FILE_BUTTON_LIST_MODE_Container_e6dhyc7o');
          logFirebaseEvent('Container_navigate_to');

          context.pushNamed(
            'file',
            queryParameters: {
              'file': serializeParam(
                widget.document,
                ParamType.Document,
              ),
            }.withoutNulls,
            extra: <String, dynamic>{
              'file': widget.document,
              kTransitionInfoKey: TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.leftToRight,
                duration: Duration(milliseconds: 200),
              ),
            },
          );
        },
        child: Material(
          color: Colors.transparent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            width: double.infinity,
            height: 50.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidFileAlt,
                    color: widget.color,
                    size: 24.0,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Text(
                      widget.name!,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
