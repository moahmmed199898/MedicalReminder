import 'package:flutter/material.dart';

import 'package:medical_reminder/Components/HomeButtons/Home_Buttons_Manager.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Medical Reminder"),
        ),
        body: HomeButtonsManager()
    );
  }

}
