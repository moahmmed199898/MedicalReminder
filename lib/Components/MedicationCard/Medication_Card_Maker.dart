import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Components/MedicationCard/Medication_Card.dart';
import 'package:intl/intl.dart';
import 'package:medical_reminder/Services/Date_Time_Translator.dart';

import '../../Types/Firebase_Data.dart';
import 'Medication_Card.dart';


class MedicationCardMaker extends StatelessWidget {
  String medName;
  String subText;
  IconData icon;
  Color iconColor;
  Medications medications;

  MedicationCardMaker(this.medications) {
    medName = medications.medNickName;
    //TODO: implement when the next med is due
    subText = _timeStringGenerator(medications.medInterval);
    if(medications.medType == "T") icon = FontAwesomeIcons.tablets; else icon = FontAwesomeIcons.capsules;
    iconColor = Color.fromRGBO(medications.medColor.r, medications.medColor.g, medications.medColor.b, 1);

  }

  String _timeStringGenerator(List<MedInterval> timestemps) {
    List<int> medTimes = _findTheClosestMedication(timestemps);
    String amOrPM;
    int hour;
    if(medTimes[1]>12) {
      amOrPM = "PM";
      hour = medTimes[1]-12;
    } else {
      amOrPM = "AM";
      hour = medTimes[1];
    }

    return "Your next medication is on \n${DateTimeTranslator.intToDay(medTimes[0])} at ${hour}:${medTimes[2]} ${amOrPM}";
  }


  List<int> _findTheClosestMedication(List<MedInterval> timestemps) {
    //find the closest day
    timestemps.sort((a, b) => a.day.compareTo(b.day));
    MedInterval closestMedication = timestemps[0];
    //find the closest time
    List<Duration> medicationTimestemps = List<Duration>();
    for(String medicationTimestamp in closestMedication.time) {
      List<String> splittedTime = medicationTimestamp.split(":");
      Duration duration = Duration(hours: int.parse(splittedTime[0]),  minutes: int.parse(splittedTime[1]));
      medicationTimestemps.add(duration);
    }
    medicationTimestemps.sort();
    DateTime dateTimeforMedication = generateNewDayTime().add(medicationTimestemps[0]);



    return [closestMedication.day, dateTimeforMedication.hour, dateTimeforMedication.minute];
  }



  DateTime generateNewDayTime() {
    DateTime currentDateTime = DateTime.now();
    String currentDateString = currentDateTime.toString().split(" ")[0];
    DateTime currentDate = DateTime.parse(currentDateString);
    return currentDate;
  }





  @override
  Widget build(BuildContext context) {

    return MedicationCard(medName, subText, icon, iconColor);
  }

}