import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBTRo7Pm3o4b-ESiyiDLLHu55y7ibNMXxk",
            authDomain: "brokerfortesting.firebaseapp.com",
            projectId: "brokerfortesting",
            storageBucket: "brokerfortesting.appspot.com",
            messagingSenderId: "328946884617",
            appId: "1:328946884617:web:e537e27496b1d5f9d998d8",
            measurementId: "G-24EG46GKME"));
  } else {
    await Firebase.initializeApp();
  }
}
