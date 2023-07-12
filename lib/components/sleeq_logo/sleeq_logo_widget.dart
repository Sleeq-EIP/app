import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sleeq_logo_model.dart';
export 'sleeq_logo_model.dart';

class SleeqLogoWidget extends StatefulWidget {
  const SleeqLogoWidget({
    Key? key,
    this.color,
    this.withText,
  }) : super(key: key);

  final Color? color;
  final bool? withText;

  @override
  _SleeqLogoWidgetState createState() => _SleeqLogoWidgetState();
}

class _SleeqLogoWidgetState extends State<SleeqLogoWidget> {
  late SleeqLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SleeqLogoModel());

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
      height: 50.0,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
            child: Icon(
              FFIcons.ksleeqLogo,
              color: widget.color,
              size: 50.0,
            ),
          ),
          if (valueOrDefault<bool>(
            widget.withText,
            false,
          ))
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Icon(
                FFIcons.ksleeqTextVector,
                color: widget.color,
                size: 50.0,
              ),
            ),
        ],
      ),
    );
  }
}
