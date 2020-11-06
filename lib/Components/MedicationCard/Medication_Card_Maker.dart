import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Components/MedicationCard/Medication_Card.dart';
import 'package:intl/intl.dart';
import 'package:medical_reminder/Services/Date_Time_Translator.dart';
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

  String _timeStringGenerator(Medication medication) {
    DayNTime medTimes = _findTheClosestDose(medication);
    String amOrPM;
    int hour;
    if(medTimes.hour>12) {
      amOrPM = "PM";
      hour = medTimes.hour-12;
    } else {
      amOrPM = "AM";
      hour = medTimes.hour;
    }

    return "Your next medication is on \n${DateTimeTranslator.intToDay(medTimes.day)} at $hour:${medTimes.minutes} $amOrPM";
  }


  DayNTime _findTheClosestDose(Medication medication) {
    List<DayNTime> dayNTimes = _convertTimesToDayNTimeObjectList(medications.times);
    List<DayNTime> upComingDays = _findUpComingDays(dayNTimes);
    DayNTime closestDose = _findClosestTime(upComingDays);
    return closestDose;
  }

  DayNTime _findClosestTime(List<DayNTime> dayNTimes) {
    //sort by hour
    dayNTimes.sort((a,b)=>a.hour.compareTo(b.hour));
    //check if any others has the same hour
    List<DayNTime> sameHourDayNTimes = List<DayNTime>();
    int lowestHour = dayNTimes[0].hour;
    for(var dayNTime in dayNTimes) {
      if(dayNTime.hour == lowestHour) {
        sameHourDayNTimes.add(dayNTime);
      }
    }
    sameHourDayNTimes.sort((a,b) => a.minutes.compareTo(b.minutes));
    return sameHourDayNTimes[0];

  }

  List<DayNTime> _findUpComingDays(List<DayNTime> dayNTimes) {
    List<DayNTime> upComingDays = List<DayNTime>();
    for(var dayNTime in dayNTimes) {
      DateTime now = DateTime.now();
      if(dayNTime.day>=now.day) {
        upComingDays.add(dayNTime);
      }
    }
    return upComingDays;
  }

  List<DayNTime> _convertTimesToDayNTimeObjectList(List<String> times) {
    List<DayNTime> dayNTimes = List<DayNTime>();
    for(var time in times) {
      dayNTimes.add(_convertTimeToDayNTimeObject(time));
    }
    return dayNTimes;
  }

  DayNTime _convertTimeToDayNTimeObject(String time) {
    DayNTime dayNTime = DayNTime();
    List<String> splitedDay = time.split(" ");
    List<String> splitedTime = splitedDay[1].split(":");
    dayNTime.day = int.parse(splitedDay[0]);
    dayNTime.hour = int.parse(splitedTime[0]);
    dayNTime.minutes = int.parse(splitedTime[1]);
    return dayNTime;
  }







  @override
  Widget build(BuildContext context) {

    return MedicationCard(medName, subText, icon, iconColor);
  }

}