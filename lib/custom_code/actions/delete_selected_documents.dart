// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future deleteSelectedDocuments(
  List<DocumentReference> folders,
  List<DocumentReference> files,
  DocumentReference currentFolder,
) async {
  while (folders.isNotEmpty) {
    folders[0].delete();
    folders.removeAt(0);
  }

  while (files.isNotEmpty) {
    files[0].delete();
    files.removeAt(0);
  }
}
