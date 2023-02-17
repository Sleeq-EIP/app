import '../backend/backend.dart';
import '../components/add_modal_widget.dart';
import '../components/breadcrumbs_widget.dart';
import '../components/sidebar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoldersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Sidebar component.
  late SidebarModel sidebarModel;
  // Model for breadcrumbs component.
  late BreadcrumbsModel breadcrumbsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    breadcrumbsModel = createModel(context, () => BreadcrumbsModel());
  }

  void dispose() {
    sidebarModel.dispose();
    breadcrumbsModel.dispose();
  }

  /// Additional helper methods are added here.

}
