import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/App_State.dart';
import 'package:medical_reminder/Services/Firebase/Database.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';

class NotificationYesPage extends StatefulWidget {
  Medication medication;
  NotificationYesPage(this.medication);
  _NotificationYesPage createState() => _NotificationYesPage();
}

class _NotificationYesPage extends State<NotificationYesPage> {
  bool uploaded = false;
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    Database database = Database();
    await database.updateQuantity(widget.medication.medId, widget.medication.amountLeft-1);
    await database.addHistory(widget.medication.medId,widget.medication.medNickName, true);
    setState(() {
      uploaded = true;
    });
    await Future.delayed(Duration(seconds: 2));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    if(!uploaded) {
      return Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Colors.green,
          padding: EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Text(
                "Happy to hear that!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Text(
                  "Please wait until we update our database",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white),),
              )


            ],
          )
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          alignment: Alignment.center,
          child: FaIcon(FontAwesomeIcons.check, color: Colors.white, size: 300,),
        ),
      );
    }

  }


}