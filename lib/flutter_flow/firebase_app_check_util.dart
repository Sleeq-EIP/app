import 'package:firebase_app_check/firebase_app_check.dart';

Future initializeFirebaseAppCheck() => FirebaseAppCheck.instance.activate(
      webRecaptchaSiteKey: '6LerFSEkAAAAAG-5KzoEFaMdPhFdIxAfVbOmv9kk',
      androidProvider: AndroidProvider.playIntegrity,
    );
