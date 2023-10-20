import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

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

List<String> addFolderToList(
  List<String> myList,
  String newElement,
) {
  myList.add(newElement);
  return myList;
}

bool findImgExt(String string) {
  var result = [".png", ".jpg", ".jpeg", ".gif", ".webp", ".bmp", ".wbmp"]
      .any(string.contains);
  return (result);
}

String urlToImgPath(String url) {
  return (url);
}

bool findPdfExt(String string) {
  var result = [".pdf"].any(string.contains);
  return (result);
}

String? createDynamicLink(
  String? dynamicLinkDomain,
  String? packageName,
  String? deepLink,
  String? params,
) {
  //null safety
  dynamicLinkDomain ??= "https://example.page.link";
  packageName ??= "app.example.com";
  deepLink ??= "page";
  params ??= "";

  String dynamicLinkCombined = dynamicLinkDomain + "?";

  //for android
  dynamicLinkCombined += "apn=" + packageName + "&";

  //for IOS
  dynamicLinkCombined += "ibi=" + packageName + "&";

  String link = "link=" +
      Uri.encodeComponent(dynamicLinkDomain + "/" + deepLink + "?" + params);

  dynamicLinkCombined += link;

  return dynamicLinkCombined;
}

bool endsWith(
  String string,
  String end,
) {
  return (string.endsWith(end));
}

bool? numberChecking(String? password) {
  // Null or empty string is not a number
  if (password == null || password.isEmpty) {
    return false;
  }

  bool found = password.contains(new RegExp(r'[0-9]'));

  return found;
}

bool? specialChar(String? password) {
  // Null or empty string is not a number
  if (password == null || password.isEmpty) {
    return false;
  }

  // Special characters allowed
  final regExp = RegExp(
      r'[\^*.\[\]{}()?\-"!@#%&/\,><:;_~`+=' // <-- Notice the escaped symbols
      "'" // <-- ' is added to the expression
      ']');

  bool found = password.contains(regExp);
  return found;
}

bool? upperCase(String? password) {
  // Null or empty string is not a number
  if (password == null || password.isEmpty) {
    return false;
  }

  bool found = password.contains(new RegExp(r'[A-Z]'));

  return found;
}

bool? lowerCase(String? password) {
  // Null or empty string is not a number
  if (password == null || password.isEmpty) {
    return false;
  }

  bool found = password.contains(new RegExp(r'[a-z]'));

  return found;
}

bool findpkpass(String string) {
  var result = [".pkpass"].any(string.contains);
  return (result);
}

String strToLowerCase(String str) {
  return str.toLowerCase();
}
