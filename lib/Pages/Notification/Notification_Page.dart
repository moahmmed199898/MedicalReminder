import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Components/HomeButtons/Home_Button.dart';
import 'package:medical_reminder/Pages/Notification/Notification_Yes_Page.dart';

class NotificationPage extends StatelessWidget {
  String medID;
  NotificationPage(this.medID);

  void onYesHandler(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationYesPage(medID))).then((value) => Navigator.pop(context));
  }

  void onNoHandler() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Container(
        //TODO: Fix the color ( top portion of the page does not match the bottom )
        color: Colors.white70,
        margin: EdgeInsets.only(top: 120),
        child: Center(
          child: Column(
            children: [
              FaIcon(
                FontAwesomeIcons.tablets,
                size: 100,
                color: Colors.cyan,
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "High blood pressure medication reminder",
                    textAlign: TextAlign.center,
                    maxLines: 20,
                    style: TextStyle(

                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "Did you take it?",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    HomeButton("Yes", Colors.green, FontAwesomeIcons.check, ()=>{onYesHandler(context)}),
                    HomeButton("No", Colors.redAccent, FontAwesomeIcons.times, ()=>{}),
                  ],
                ),
              )
            ],
          ),
        ),
      )

    );
  }

}