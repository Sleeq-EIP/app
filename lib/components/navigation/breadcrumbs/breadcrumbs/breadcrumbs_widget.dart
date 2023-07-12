import '/components/navigation/breadcrumbs/sub_elements/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'breadcrumbs_model.dart';
export 'breadcrumbs_model.dart';

class BreadcrumbsWidget extends StatefulWidget {
  const BreadcrumbsWidget({
    Key? key,
    this.folderNames,
    bool? isHomeScreen,
  })  : this.isHomeScreen = isHomeScreen ?? true,
        super(key: key);

  final List<String>? folderNames;
  final bool isHomeScreen;

  @override
  _BreadcrumbsWidgetState createState() => _BreadcrumbsWidgetState();
}

class _BreadcrumbsWidgetState extends State<BreadcrumbsWidget> {
  late BreadcrumbsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BreadcrumbsModel());

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

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          children: [
            if (!widget.isHomeScreen)
              wrapWithModel(
                model: _model.backButtonModel,
                updateCallback: () => setState(() {}),
                child: BackButtonWidget(),
              ),
            if (widget.isHomeScreen)
              Container(
                width: 35.0,
                height: 35.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.home_filled,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
              ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: 35.0,
              child: custom_widgets.Breadcrumbs(
                width: double.infinity,
                height: 35.0,
                folderList: widget.folderNames!,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
