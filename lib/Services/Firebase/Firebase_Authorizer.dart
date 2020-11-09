import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medical_reminder/Services/Firebase/Firebase_Initializer.dart';

import '../../App_State.dart';

class FirebaseAuthorizer {
  String displayText = "Loading";
  BuildContext context;
  FirebaseAuth auth;
  FirebaseAuthorizer(this.context);

  Future init() async {
    //TODO: Error Handling
    await FirebaseInitializer.initFlutterFire();
    auth = FirebaseAuth.instance;
  }


  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken
    );

    auth.authStateChanges().listen((User user) {
      if(user == null) {
        //TODO: Handel signout
        print("user is signed out");
      } else {
        print("user is signed in");
      }
    });
    UserCredential userCredential = await auth.signInWithCredential(credential);
    AppState.credential = userCredential;
    Navigator.pop(context);
    return userCredential;
  }

  Future checkIfUserIsLoggedIN() async {
    await init();
    if(auth.currentUser == null) {
      Navigator.pushNamed(context, "/auth");
    }


  }
}