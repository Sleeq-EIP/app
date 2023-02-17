import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

dynamic mergeFolderAndItems(
  List<DocumentReference> folders,
  List<DocumentReference> files,
) {
  // merge the folders and the files into a new object with a isFolder boolean and a ref with the doc ref
  List<dynamic> newList = [];
  if (folders.isNotEmpty) {
    for (DocumentReference folder in folders) {
      newList.add({'ref': folder, 'isFolder': true});
    }
  }
  if (files.isNotEmpty) {
    for (DocumentReference file in files) {
      newList.add({'ref': file, 'isFolder': false});
    }
  }
  return newList;
}
