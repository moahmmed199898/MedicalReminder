import 'package:firebase_auth/firebase_auth.dart';
class AppState {
  static bool isFirebaseInitialized = false;
  static bool firebaseError = false;
  static UserCredential credential;
}