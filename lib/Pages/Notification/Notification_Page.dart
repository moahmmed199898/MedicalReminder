import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Components/HomeButtons/Home_Button.dart';
import 'package:medical_reminder/Pages/Notification/Notification_No_Page.dart';
import 'package:medical_reminder/Pages/Notification/Notification_Yes_Page.dart';
import 'package:medical_reminder/Services/Firebase/Database.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';


class NotificationPage extends StatefulWidget {
  String medID;
  NotificationPage(this.medID);

  @override
  _NotificationPage createState()=>_NotificationPage();
}

class _NotificationPage extends State<NotificationPage> {
  Medication medInfo;
  bool _dataLoading = true;

  @override
  void initState() {
    super.initState();
    init();
  }


  void init() async {
    Medication _medInfo = await Database().getMedInfoFromID(widget.medID);
    setState(() {
      medInfo = _medInfo;
      _dataLoading = false;
    });
  }

  void onYesHandler(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationYesPage(medInfo))).then((value) => Navigator.pop(context));
  }

  void onNoHandler(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationNoPage(medInfo))).then((value) => Navigator.pop(context));
  }

  @override
  Widget build(BuildContext context) {

    if(_dataLoading) {
      return Scaffold(
        drawer: Drawer(),
        body: Container(
          alignment: Alignment.center,
          child: CircularProgressIndicator()
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      body: Container(
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
                    "${medInfo.medNickName} reminder",
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
                    HomeButton("No", Colors.redAccent, FontAwesomeIcons.times, ()=>{onNoHandler(context)}),
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