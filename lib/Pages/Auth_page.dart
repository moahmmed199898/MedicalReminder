import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:medical_reminder/Constants.dart';
import 'package:medical_reminder/Services/Firebase/Firebase_Authorizer.dart';

import '../App_State.dart';
import '../Services/Firebase/Firebase_Initializer.dart';



class AuthPage extends StatefulWidget {
  @override
  _AuthPage createState() => _AuthPage();
}


class _AuthPage extends State<AuthPage> {

  FirebaseAuthorizer _firebaseAuthorizer;


  @override
  void initState() {
    _firebaseAuthorizer = FirebaseAuthorizer(context);
    _firebaseAuthorizer.init();
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
            SignInButton(Buttons.Google, onPressed: ()=>_firebaseAuthorizer.signInWithGoogle())
          ],
        ),
      )
    );
  }
}
