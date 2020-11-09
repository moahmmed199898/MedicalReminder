import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Components/MedicationCard/Medication_Card.dart';
import 'package:medical_reminder/Services/Date_Time_Translator.dart';
import 'package:medical_reminder/Services/Medication_Dates.dart';
import 'package:medical_reminder/Types/DayNTime.dart';

import '../../Types/Firebase_Data.dart';
import 'Medication_Card.dart';


class MedicationCardMaker extends StatelessWidget {
  String medName;
  String subText;
  IconData icon;
  Color iconColor;
  Medication medications;

  MedicationCardMaker(this.medications) {
    medName = medications.medNickName;
    subText = _timeStringGenerator(medications);
    if(medications.medType == "T") icon = FontAwesomeIcons.tablets; else icon = FontAwesomeIcons.capsules;
    iconColor = Color.fromRGBO(medications.medColor.r, medications.medColor.g, medications.medColor.b, 1);
  }

  String _timeStringGenerator(Medication medications) {
    DayNTime medTimes = MedicationDates().findTheClosestDose(medications);
    String amOrPM;
    int hour;
    if(medTimes.hour>12) {
      amOrPM = "PM";
      hour = medTimes.hour-12;
    } else {
      amOrPM = "AM";
      hour = medTimes.hour;
    }

    return "Your next medication is on \n${DateTimeTranslator.intToDay(medTimes.day)} at $hour:${medTimes.minutes.toString().padRight(2,"0")} $amOrPM";
  }







  @override
  Widget build(BuildContext context) {

    return MedicationCard(medName, subText, icon, iconColor);
  }

}