import '/components/navigation/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/navigation/sidebar/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExamplePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Sidebar component.
  late SidebarModel sidebarModel;
  // Model for NavBarFloting component.
  late NavBarFlotingModel navBarFlotingModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    navBarFlotingModel = createModel(context, () => NavBarFlotingModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sidebarModel.dispose();
    navBarFlotingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
