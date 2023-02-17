// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:provider/provider.dart';
import '../../components/folder_button_widget.dart';
import '../../components/file_button_widget.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ResponsiveGrid extends StatefulWidget {
  const ResponsiveGrid({
    Key? key,
    this.width,
    this.height,
    required this.folders,
    required this.files,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<DocumentReference> folders;
  final List<DocumentReference> files;

  @override
  _ResponsiveGridState createState() => _ResponsiveGridState();
}

class _ResponsiveGridState extends State<ResponsiveGrid> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // logFirebaseEvent('screen_view', parameters: {'screen_name': 'folders'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  Widget createFolder(items, itemsIndex) {
    final itemsItem = items[itemsIndex];
    return FutureBuilder<FoldersRecord>(
      future: FoldersRecord.getDocumentOnce(itemsItem),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final folderButtonFoldersRecord = snapshot.data!;
        return new FolderButtonWidget(
          key: Key('folderButton_${itemsIndex}'),
          color: valueOrDefault<Color>(
            folderButtonFoldersRecord.color,
            FlutterFlowTheme.of(context).secondaryText,
          ),
          name: folderButtonFoldersRecord.name,
          path: folderButtonFoldersRecord.reference,
        );
      },
    );
  }

  Widget createFile(files, filesIndex) {
    final filesItem = files[filesIndex];
    return FutureBuilder<FilesRecord>(
      future: FilesRecord.getDocumentOnce(filesItem),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final fileButtonFilesRecord = snapshot.data!;
        return new FileButtonWidget(
          key: Key('fileButton_${filesIndex}'),
          name: fileButtonFilesRecord.name,
          color: valueOrDefault<Color>(
            fileButtonFilesRecord.color,
            FlutterFlowTheme.of(context).secondaryText,
          ),
          file: fileButtonFilesRecord,
        );
      },
    );
  }

  List<Widget> createWidgetList() {
    int max = widget.folders.length + widget.files.length;
    List<Widget> elements = [];
    for (int i = 0; i < max; i++) {
      if (i < widget.folders.length)
        elements.add(createFolder(widget.folders, i));
      else
        elements.add(createFile(widget.files, i - widget.folders.length));
    }
    return elements;
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridList(
        desiredItemWidth: 100,
        minSpacing: 10,
        shrinkWrap: true,
        scroll: true,
        children: createWidgetList());
  }
}
