import 'package:medical_reminder/Types/DayNTime.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';

import 'Firebase/Database.dart';


class MedicationDates {

  Future<List<Medication>> getMedicationsWithDateNTime(List<Medication> currentMedicationsList) async {
    List<Medication> currentMedications = List<Medication>();
    for(var med in  currentMedicationsList) {
       Medication currentMed = Medication();
       currentMed = med;
       currentMed.dateNTime = findTheClosestDose(currentMed);
       currentMedications.add(currentMed);
    }
    return currentMedications;
  }

  DayNTime findTheClosestDose(Medication medications) {
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
      if(dayNTime.day>=now.weekday) {
        upComingDays.add(dayNTime);
      }
    }

    if(upComingDays.length == 0) {
      return dayNTimes;
    } else {
      return upComingDays;
    }
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


}