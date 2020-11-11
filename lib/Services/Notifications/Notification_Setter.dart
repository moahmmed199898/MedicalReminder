import 'package:medical_reminder/Services/Firebase/Database.dart';
import 'package:medical_reminder/Services/Notifications/Notification_API.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationSetter {
  static Future syncDatabaseWithNotifications() async {
    print("fhuirehuie");
    NotificationAPI.clearAllNotifications();
    List<Medication> medications = await Database().getCurrentMedication();
    tz.initializeTimeZones();
    var now = tz.TZDateTime.now(tz.local);

    for(var med in medications) {
      if(med.dateNTime.day >= now.weekday && med.dateNTime.hour >= now.hour && med.dateNTime.minutes >= now.minute) {
        var medTime = now.subtract(Duration(days: now.weekday, hours: now.hour, minutes: now.minute, seconds: now.second)).add(Duration(days: med.dateNTime.day, hours: med.dateNTime.hour, minutes: med.dateNTime.minutes));
        NotificationAPI.scheduleNotification("Don't forget your ${med.medNickName}", "Just a friendly reminder to take ${med.medicationName}", medTime, med.medId);
      }

    }

  }
}