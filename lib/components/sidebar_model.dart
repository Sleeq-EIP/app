import '../components/newnav_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SidebarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for newnav component.
  late NewnavModel newnavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    newnavModel = createModel(context, () => NewnavModel());
  }

  void dispose() {
    newnavModel.dispose();
  }

  /// Additional helper methods are added here.

}
