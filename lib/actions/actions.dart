import '/backend/api_requests/api_manager.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future bugReport(BuildContext context) async {
  logFirebaseEvent('BugReport_alert_dialog');
  var confirmDialogResponse = await showDialog<bool>(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Bug report'),
            content: Text(
                'Shaking your phone allows to submit bug reports, would you like to do this ? '),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext, false),
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext, true),
                child: Text('Take me there!'),
              ),
            ],
          );
        },
      ) ??
      false;
  if (confirmDialogResponse) {
    logFirebaseEvent('BugReport_navigate_to');

    context.pushNamed('bugReport');
  } else {
    return;
  }
}
