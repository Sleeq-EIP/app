import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/navigation/breadcrumbs/sub_elements/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FeedbackModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for EaseofuseFeedback widget.
  double? easeofuseFeedbackValue;
  // State field(s) for FeqtureQualityFeedback widget.
  double? feqtureQualityFeedbackValue;
  // State field(s) for BugFeedback widget.
  double? bugFeedbackValue;
  // State field(s) for PriceFeedback widget.
  double? priceFeedbackValue;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (Send feedback)] action in Button widget.
  ApiCallResponse? apiResultp03;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    backButtonModel.dispose();
    textController1?.dispose();
    textController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
