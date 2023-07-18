import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBpG48IahkvwuaDuajjdoAj9fPJVPscJZs",
            authDomain: "gesundheit-und-klima.firebaseapp.com",
            projectId: "gesundheit-und-klima",
            storageBucket: "gesundheit-und-klima.appspot.com",
            messagingSenderId: "662019060444",
            appId: "1:662019060444:web:1018f757d1b111fdf93a19",
            measurementId: "G-2WKPX6L7ZE"));
  } else {
    await Firebase.initializeApp();
  }
}
