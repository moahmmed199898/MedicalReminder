class DateTimeTranslator {
  static String intToDay(int dayNumber) {
    switch(dayNumber) {
      case 1: return "Monday";
      case 2: return "Tuesday";
      case 3: return "Wednesday";
      case 4: return "Thursday";
      case 5: return "Friday";
      case 6: return "Saturday";
      case 7: return "Sunday";
      default: return "NA";
    }
  }

  static int dayToInt(String dayName) {
    switch(dayName) {
      case "Monday": return 1;
      case "Tuesday": return 2;
      case "Wednesday": return 3;
      case "Thursday": return 4;
      case "Friday": return 5;
      case "Saturday": return 6;
      case "Sunday": return 7;

    }
  }
  static int shortDayToInt(String dayName) {
    switch(dayName) {
      case "M": return 1;
      case "T": return 2;
      case "W": return 3;
      case "TR": return 4;
      case "F": return 5;
      case "St": return 6;
      case "Sn": return 7;

    }
  }
}