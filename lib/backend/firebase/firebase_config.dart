import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD3EpHaRoSvnV1yJqDuoirK0IE_YZiCc_A",
            authDomain: "newstart-637b5.firebaseapp.com",
            projectId: "newstart-637b5",
            storageBucket: "newstart-637b5.appspot.com",
            messagingSenderId: "596821974378",
            appId: "1:596821974378:web:54f27a4895edbd54301913"));
  } else {
    await Firebase.initializeApp();
  }
}
