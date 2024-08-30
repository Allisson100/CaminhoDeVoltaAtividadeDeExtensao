import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCrQzdIr2N349eNhH1gzJwC4BCrzuvKT10",
            authDomain: "caminho-de-volta.firebaseapp.com",
            projectId: "caminho-de-volta",
            storageBucket: "caminho-de-volta.appspot.com",
            messagingSenderId: "97586645382",
            appId: "1:97586645382:web:f420934ac1edfecc2cc407",
            measurementId: "G-1TV07S5097"));
  } else {
    await Firebase.initializeApp();
  }
}
