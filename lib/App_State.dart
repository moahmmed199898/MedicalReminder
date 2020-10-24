import 'package:firebase_auth/firebase_auth.dart';
class AppState {
  static bool firebaseInitialized = false;
  static bool firebaseError = false;
  static UserCredential credential;
}