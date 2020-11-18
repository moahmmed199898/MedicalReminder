import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'package:medical_reminder/Components/HomeButtons/Home_Button.dart';
import 'package:medical_reminder/Services/Firebase/Firebase_Authorizer.dart';
import 'package:medical_reminder/Services/Notifications/Notification_API.dart';
import 'package:medical_reminder/Services/Notifications/Notification_Setter.dart';

class HomeButtonsManager extends StatefulWidget{
  @override
  _HomeButtonsManager createState() => _HomeButtonsManager();
}

class _HomeButtonsManager extends State<HomeButtonsManager>{
  @override
  void initState() {
    super.initState();
    FirebaseAuthorizer(context).checkIfUserIsLoggedIN();
  }



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:Container(
          margin: EdgeInsets.only(left:12),
          child: Center(
            child:  Column(
              children: [
              Row(
                children: [
                  HomeButton("Current Medication", Color.fromRGBO(0, 154, 203, 1), FontAwesomeIcons.pills, ()=>Navigator.pushNamed(context, "/CurrentMed")),
                  HomeButton("Alerts", Color.fromRGBO(190, 16, 16, 1), FontAwesomeIcons.exclamationCircle,()=>Navigator.pushNamed(context, "/Alerts")),
                ],
              ),
              Row(
                children: [
                  HomeButton("History", Color.fromRGBO(65, 65, 65, 1), FontAwesomeIcons.calendarDay, ()=>{Navigator.pushNamed(context, "/History")}),
                  HomeButton("Add", Color.fromRGBO(41, 135, 8, 1), FontAwesomeIcons.plus, ()=>Navigator.pushNamed(context, "/add")),
                ],
              ),
              Row(
                children: [
                  HomeButton("Doctor View", Color.fromRGBO(0, 154, 203, 1), FontAwesomeIcons.eye, ()=>{NotificationSetter.syncDatabaseWithNotifications()}),
                  HomeButton("Setting", Color.fromRGBO(81, 81, 81, 1), FontAwesomeIcons.cog, ()=>{Navigator.pushNamed(context, "/Setting")})
                ],
              )
            ],
          ),
        )
    )
    );


  }


}