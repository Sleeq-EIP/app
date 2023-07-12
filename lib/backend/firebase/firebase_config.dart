import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDgHZO28cdhqYmA0q87YVciLL5KilTphgk",
            authDomain: "sleeq-flutterflow.firebaseapp.com",
            projectId: "sleeq-flutterflow",
            storageBucket: "sleeq-flutterflow.appspot.com",
            messagingSenderId: "861304830205",
            appId: "1:861304830205:web:b3d1c300157035917be694",
            measurementId: "G-40QBERM8NF"));
  } else {
    await Firebase.initializeApp();
  }
}
