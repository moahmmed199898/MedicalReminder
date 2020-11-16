import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/App_State.dart';
import 'package:medical_reminder/Components/HomeButtons/Home_Button.dart';
import 'package:medical_reminder/Services/Firebase/Database.dart';
import 'package:medical_reminder/Services/Notifications/Notification_Setter.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';

class NotificationNoPage extends StatefulWidget {
  Medication medication;
  NotificationNoPage(this.medication);
  _NotificationNoPage createState() => _NotificationNoPage();
}

class _NotificationNoPage extends State<NotificationNoPage> {
  bool _showDelayPage = false;
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    Database database = Database();
    await database.updateQuantity(widget.medication.medId, widget.medication.amountLeft-1);
    await database.addHistory(widget.medication.medId,widget.medication.medNickName, false);
  }

  void onYesHandler(BuildContext context) async {
    NotificationSetter.delay(Duration(minutes: 5), widget.medication.medId);
    setState(() {
      _showDelayPage = true;
    });
    await Future.delayed(Duration(seconds: 5));
    Navigator.pop(context);
  }

  void onNoHandler(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    if (!_showDelayPage) {
      return Scaffold(
        body: Container(
            alignment: Alignment.center,
            color: Colors.white70,
            padding: EdgeInsets.only(top: 200),
            child: Column(
              children: [
                Text(
                  "Would you like to be reminded later?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.red,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      HomeButton(
                          "Yes", Colors.green, FontAwesomeIcons.check, () => {onYesHandler(context)}),
                      HomeButton("No", Colors.redAccent, FontAwesomeIcons.times, () => {onNoHandler(context)}),
                    ],
                  ),
                ),
              ],
            )
        ),
      );
    } else {
      return Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Text(
            "Alright, we will remind you after 5 minutes",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red
            ),

          ),
        ),
      );
    }
  }
  }

