import '../components/color_item_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'color_dial_model.dart';
export 'color_dial_model.dart';

class ColorDialWidget extends StatefulWidget {
  const ColorDialWidget({
    Key? key,
    this.allowedColors,
  }) : super(key: key);

  final List<Color>? allowedColors;

  @override
  _ColorDialWidgetState createState() => _ColorDialWidgetState();
}

class _ColorDialWidgetState extends State<ColorDialWidget> {
  late ColorDialModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColorDialModel());

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

    return Wrap(
      spacing: 0,
      runSpacing: 0,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      direction: Axis.horizontal,
      runAlignment: WrapAlignment.start,
      verticalDirection: VerticalDirection.down,
      clipBehavior: Clip.antiAlias,
      children: [
        wrapWithModel(
          model: _model.colorItemModel1,
          updateCallback: () => setState(() {}),
          child: ColorItemWidget(
            color: widget.allowedColors?[0],
          ),
        ),
        wrapWithModel(
          model: _model.colorItemModel2,
          updateCallback: () => setState(() {}),
          child: ColorItemWidget(
            color: widget.allowedColors?[1],
          ),
        ),
        wrapWithModel(
          model: _model.colorItemModel3,
          updateCallback: () => setState(() {}),
          child: ColorItemWidget(
            color: widget.allowedColors?[2],
          ),
        ),
        wrapWithModel(
          model: _model.colorItemModel4,
          updateCallback: () => setState(() {}),
          child: ColorItemWidget(
            color: widget.allowedColors?[3],
          ),
        ),
        wrapWithModel(
          model: _model.colorItemModel5,
          updateCallback: () => setState(() {}),
          child: ColorItemWidget(
            color: widget.allowedColors?[4],
          ),
        ),
        wrapWithModel(
          model: _model.colorItemModel6,
          updateCallback: () => setState(() {}),
          child: ColorItemWidget(
            color: widget.allowedColors?[5],
          ),
        ),
        wrapWithModel(
          model: _model.colorItemModel7,
          updateCallback: () => setState(() {}),
          child: ColorItemWidget(
            color: widget.allowedColors?[6],
          ),
        ),
        wrapWithModel(
          model: _model.colorItemModel8,
          updateCallback: () => setState(() {}),
          child: ColorItemWidget(
            color: widget.allowedColors?[7],
          ),
        ),
      ],
    );
  }
}
