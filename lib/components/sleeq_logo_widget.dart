import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
            child: Icon(
              FFIcons.ksleeqLogo,
              color: widget.color,
              size: 50,
            ),
          ),
          if (valueOrDefault<bool>(
            widget.withText,
            false,
          ))
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Icon(
                FFIcons.ksleeqTextVector,
                color: widget.color,
                size: 50,
              ),
            ),
        ],
      ),
    );
  }
}
