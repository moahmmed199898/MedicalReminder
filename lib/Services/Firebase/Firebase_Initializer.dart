import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../APP_State.dart';

class FirebaseInitializer {
  bool _initialized = false;
  bool _error = false;

  //init the firebase app
  static Future<int> initFlutterFire() async {
    try{
      await Firebase.initializeApp();
      AppState.firebaseInitialized = true;
      return 1;
    } catch(e) {
      print("Firebase Init Error");
      print(e.toString());
      AppState.firebaseError = true;
      return -1;
    }
  }
}
