import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'file_button_model.dart';
export 'file_button_model.dart';

class FileButtonWidget extends StatefulWidget {
  const FileButtonWidget({
    Key? key,
    this.file,
    this.name,
    this.color,
  }) : super(key: key);

  final FilesRecord? file;
  final String? name;
  final Color? color;

  @override
  _FileButtonWidgetState createState() => _FileButtonWidgetState();
}

class _FileButtonWidgetState extends State<FileButtonWidget> {
  late FileButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FileButtonModel());

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
      children: [
        Container(
          width: 100,
          height: 100,
          child: Stack(
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 0,
                borderWidth: 1,
                buttonSize: 100,
                icon: FaIcon(
                  FontAwesomeIcons.solidFileAlt,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 80,
                ),
                onPressed: () async {
                  logFirebaseEvent('FILE_BUTTON_COMP_solidFileAlt_ICN_ON_TAP');

                  context.pushNamed(
                    'file',
                    queryParams: {
                      'file': serializeParam(
                        widget.file,
                        ParamType.Document,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      'file': widget.file,
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.leftToRight,
                        duration: Duration(milliseconds: 200),
                      ),
                    },
                  );
                },
              ),
              Align(
                alignment: AlignmentDirectional(-0.75, -0.85),
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: widget.color,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          widget.name!,
          style: FlutterFlowTheme.of(context).bodyText1,
        ),
      ],
    );
  }
}
