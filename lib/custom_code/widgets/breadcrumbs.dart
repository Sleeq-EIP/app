// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import '../../components/navigation/breadcrumbs/sub_elements/breadcrumb_element/breadcrumb_element_widget.dart';

class Breadcrumbs extends StatefulWidget {
  const Breadcrumbs({
    Key? key,
    this.width,
    this.height,
    required this.folderList,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String> folderList;

  @override
  _BreadcrumbsState createState() => _BreadcrumbsState();
}

class _BreadcrumbsState extends State<Breadcrumbs> {
  final ScrollController _controller = ScrollController();

  void scrollDown() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => scrollDown());
  }

  @override
  Widget build(BuildContext context) {
    if (widget.folderList.length == 0 || widget.folderList[0] != "Home")
      widget.folderList.insert(0, "Home");
    return BreadCrumb.builder(
      itemCount: widget.folderList.length,
      overflow: ScrollableOverflow(
          keepLastDivider: false,
          reverse: false,
          direction: Axis.horizontal,
          controller: _controller),
      builder: (index) {
        int length = widget.folderList.length;
        if (index < length - 1) {
          return BreadCrumbItem(
              content: InkWell(
            onTap: () {
              int count = length - 1 - index;
              Navigator.popUntil(context, (route) => count-- == 0);
            },
            child:
                BreadcrumbElementWidget(folderName: widget.folderList[index]),
          ));
        }
        return BreadCrumbItem(
            content:
                BreadcrumbElementWidget(folderName: widget.folderList[index]));
      },
      divider: Icon(
        Icons.chevron_right,
        color: FlutterFlowTheme.of(context).primary,
      ),
    );
  }
}
