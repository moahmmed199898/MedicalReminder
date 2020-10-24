import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:medical_reminder/Constants.dart';

import '../App_State.dart';
import '../Services/Firebase/Firebase_Initializer.dart';



class AuthPage extends StatefulWidget {
  @override
  _AuthPage createState() => _AuthPage();
}


class _AuthPage extends State<AuthPage> {
  String displayText = "Loading";

  void init() async {
    if((await FirebaseInitializer.initFlutterFire()) == -1) setState(() {displayText = "Error"; return;});
  }


  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken
    );

    FirebaseAuth auth = FirebaseAuth.instance;
    auth.authStateChanges().listen((User user) {
      if(user == null) {
        setState(() {displayText = "user is currently signed out!"; return;});
      } else {
        setState(() {displayText = "user is signed in!"; return;});
      }
    });
    UserCredential userCredential = await auth.signInWithCredential(credential);
    AppState.credential = userCredential;
    Navigator.pop(context);
    return userCredential;

  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100, bottom: 60),
              child: Text("Medical Reminder", style: TextStyle(
              color: Constants.mainColor,
              fontSize: 48,
            ),),),
            Text("Don't ever forget your medications again\nLet's get you start by having you sign in", style: TextStyle(
              fontSize: 20,
            ),),
            SignInButton(Buttons.Google, onPressed: ()=>signInWithGoogle())
          ],
        ),
      )
    );
  }
}
