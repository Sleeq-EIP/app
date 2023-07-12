import '/backend/backend.dart';
import '/components/buttons/edit_bar/edit_bar_widget.dart';
import '/components/buttons/file_button_list_mode/file_button_list_mode_widget.dart';
import '/components/buttons/folder_button_list_mode/folder_button_list_mode_widget.dart';
import '/components/buttons/new_button/new_button_widget.dart';
import '/components/navigation/breadcrumbs/breadcrumbs/breadcrumbs_widget.dart';
import '/components/navigation/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/navigation/sidebar/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoldersModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool isGridView = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Sidebar component.
  late SidebarModel sidebarModel;
  // Model for breadcrumbs component.
  late BreadcrumbsModel breadcrumbsModel;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for editBar component.
  late EditBarModel editBarModel;
  // Model for NavBarFloting component.
  late NavBarFlotingModel navBarFlotingModel;
  // Model for newButton component.
  late NewButtonModel newButtonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    breadcrumbsModel = createModel(context, () => BreadcrumbsModel());
    editBarModel = createModel(context, () => EditBarModel());
    navBarFlotingModel = createModel(context, () => NavBarFlotingModel());
    newButtonModel = createModel(context, () => NewButtonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sidebarModel.dispose();
    breadcrumbsModel.dispose();
    editBarModel.dispose();
    navBarFlotingModel.dispose();
    newButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
