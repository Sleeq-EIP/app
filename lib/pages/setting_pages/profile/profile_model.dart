import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/navigation/breadcrumbs/sub_elements/back_button/back_button_widget.dart';
import '/components/navigation/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/navigation/sidebar/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Sidebar component.
  late SidebarModel sidebarModel;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for yourName widget.
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
    yourNameController?.dispose();
    navBarFlotingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
