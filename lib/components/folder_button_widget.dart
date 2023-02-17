import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'folder_button_model.dart';
export 'folder_button_model.dart';

class FolderButtonWidget extends StatefulWidget {
  const FolderButtonWidget({
    Key? key,
    Color? color,
    this.name,
    this.path,
  })  : this.color = color ?? const Color(0xFFFF0000),
        super(key: key);

  final Color color;
  final String? name;
  final DocumentReference? path;

  @override
  _FolderButtonWidgetState createState() => _FolderButtonWidgetState();
}

class _FolderButtonWidgetState extends State<FolderButtonWidget> {
  late FolderButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FolderButtonModel());

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
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderWidth: 1,
          buttonSize: 100,
          icon: Icon(
            Icons.folder_rounded,
            color: widget.color,
            size: 80,
          ),
          onPressed: () async {
            logFirebaseEvent('FOLDER_BUTTON_folder_rounded_ICN_ON_TAP');

            context.pushNamed(
              'folders',
              queryParams: {
                'path': serializeParam(
                  widget.path,
                  ParamType.DocumentReference,
                ),
                'name': serializeParam(
                  widget.name,
                  ParamType.String,
                ),
                'color': serializeParam(
                  widget.color,
                  ParamType.Color,
                ),
              }.withoutNulls,
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                  duration: Duration(milliseconds: 200),
                ),
              },
            );
          },
        ),
        SelectionArea(
            child: Text(
          widget.name!,
          maxLines: 1,
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodyText1Family),
              ),
        )),
      ],
    );
  }
}
