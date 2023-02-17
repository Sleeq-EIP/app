import '../components/back_button_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'breadcrumbs_model.dart';
export 'breadcrumbs_model.dart';

class BreadcrumbsWidget extends StatefulWidget {
  const BreadcrumbsWidget({
    Key? key,
    String? pageName,
  })  : this.pageName = pageName ?? '/',
        super(key: key);

  final String pageName;

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
        wrapWithModel(
          model: _model.backButtonModel,
          updateCallback: () => setState(() {}),
          child: BackButtonWidget(),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
          child: Text(
            widget.pageName,
            style: FlutterFlowTheme.of(context).title3,
          ),
        ),
      ],
    );
  }
}
