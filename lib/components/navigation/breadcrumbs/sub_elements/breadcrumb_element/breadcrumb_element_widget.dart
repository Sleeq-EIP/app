import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'breadcrumb_element_model.dart';
export 'breadcrumb_element_model.dart';

class BreadcrumbElementWidget extends StatefulWidget {
  const BreadcrumbElementWidget({
    Key? key,
    this.folderName,
  }) : super(key: key);

  final String? folderName;

  @override
  _BreadcrumbElementWidgetState createState() =>
      _BreadcrumbElementWidgetState();
}

class _BreadcrumbElementWidgetState extends State<BreadcrumbElementWidget> {
  late BreadcrumbElementModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BreadcrumbElementModel());

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

    return Text(
      widget.folderName!,
      textAlign: TextAlign.center,
      style: FlutterFlowTheme.of(context).titleSmall,
    );
  }
}
