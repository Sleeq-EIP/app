import '/auth/firebase_auth/auth_util.dart';
import '/components/navigation/breadcrumbs/sub_elements/back_button/back_button_widget.dart';
import '/components/navigation/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/navigation/sidebar/sidebar/sidebar_widget.dart';
import '/components/popups/delete_account_popup/delete_account_popup_widget.dart';
import '/components/popups/reset_password_popup/reset_password_popup_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:shake/shake.dart';

class AccountModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Sidebar component.
  late SidebarModel sidebarModel;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for NavBarFloting component.
  late NavBarFlotingModel navBarFlotingModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    backButtonModel = createModel(context, () => BackButtonModel());
    navBarFlotingModel = createModel(context, () => NavBarFlotingModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sidebarModel.dispose();
    backButtonModel.dispose();
    navBarFlotingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
