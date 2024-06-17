import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBbMtfHlziJwZvff3EXaS6Y1UeCuaS3NJQ",
            authDomain: "newstart-d676d.firebaseapp.com",
            projectId: "newstart-d676d",
            storageBucket: "newstart-d676d.appspot.com",
            messagingSenderId: "174250027381",
            appId: "1:174250027381:web:e39908b1b726b17479cb3c"));
  } else {
    await Firebase.initializeApp();
  }
}
