import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/navigation/breadcrumbs/sub_elements/back_button/back_button_widget.dart';
import '/components/navigation/nav_bar_floting/nav_bar_floting_widget.dart';
import '/components/navigation/sidebar/sidebar/sidebar_widget.dart';
import '/components/subscription/all_plans/plan_archive/plan_archive_widget.dart';
import '/components/subscription/all_plans/plan_family/plan_family_widget.dart';
import '/components/subscription/all_plans/plan_open/plan_open_widget.dart';
import '/components/subscription/all_plans/plan_plus/plan_plus_widget.dart';
import '/components/subscription/all_plans/plan_starter/plan_starter_widget.dart';
import '/components/subscription/all_plans/plan_student/plan_student_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class PlanSelectionModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<String> planIds = [];
  void addToPlanIds(String item) => planIds.add(item);
  void removeFromPlanIds(String item) => planIds.remove(item);
  void removeAtIndexFromPlanIds(int index) => planIds.removeAt(index);
  void updatePlanIdsAtIndex(int index, Function(String) updateFn) =>
      planIds[index] = updateFn(planIds[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;
  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for PlanStarter component.
  late PlanStarterModel planStarterModel;
  // Model for PlanOpen component.
  late PlanOpenModel planOpenModel;
  // Model for PlanFamily component.
  late PlanFamilyModel planFamilyModel;
  // Model for PlanPlus component.
  late PlanPlusModel planPlusModel;
  // Model for PlanArchive component.
  late PlanArchiveModel planArchiveModel;
  // Model for PlanStudent component.
  late PlanStudentModel planStudentModel;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // Stores action output result for [Backend Call - API (Create Payment Link)] action in Button widget.
  ApiCallResponse? apiResult;
  // Model for NavBarFloting component.
  late NavBarFlotingModel navBarFlotingModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    planStarterModel = createModel(context, () => PlanStarterModel());
    planOpenModel = createModel(context, () => PlanOpenModel());
    planFamilyModel = createModel(context, () => PlanFamilyModel());
    planPlusModel = createModel(context, () => PlanPlusModel());
    planArchiveModel = createModel(context, () => PlanArchiveModel());
    planStudentModel = createModel(context, () => PlanStudentModel());
    backButtonModel = createModel(context, () => BackButtonModel());
    navBarFlotingModel = createModel(context, () => NavBarFlotingModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sidebarModel.dispose();
    planStarterModel.dispose();
    planOpenModel.dispose();
    planFamilyModel.dispose();
    planPlusModel.dispose();
    planArchiveModel.dispose();
    planStudentModel.dispose();
    backButtonModel.dispose();
    navBarFlotingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
