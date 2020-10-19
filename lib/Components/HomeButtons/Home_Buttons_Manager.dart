import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import 'package:medical_reminder/Components/HomeButtons/Home_Button.dart';

class HomeButtonsManager extends StatelessWidget{
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
                  HomeButton("Current Medication", Color.fromRGBO(0, 154, 203, 1), FontAwesomeIcons.pills),
                  HomeButton("Alerts", Color.fromRGBO(190, 16, 16, 1), FontAwesomeIcons.exclamationCircle)
                ],
              ),
              Row(
                children: [
                  HomeButton("History", Color.fromRGBO(65, 65, 65, 1), FontAwesomeIcons.calendarDay),
                  HomeButton("Add", Color.fromRGBO(41, 135, 8, 1), FontAwesomeIcons.plus)
                ],
              ),
              Row(
                children: [
                  HomeButton("Doctor View", Color.fromRGBO(0, 154, 203, 1), FontAwesomeIcons.eye),
                  HomeButton("Setting", Color.fromRGBO(81, 81, 81, 1), FontAwesomeIcons.cog)
                ],
              )

            ],
          ),
        )
    )
    );


  }


}