import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/sleeq_logo/sleeq_logo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sleeqLogo component.
  late SleeqLogoModel sleeqLogoModel;
  // State field(s) for TextField widget.
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FoldersRecord? folder;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  FoldersRecord? folderGoogle;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sleeqLogoModel = createModel(context, () => SleeqLogoModel());
    passwordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    sleeqLogoModel.dispose();
    emailTextController?.dispose();
    passwordTextController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
