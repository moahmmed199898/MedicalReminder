import 'package:medical_reminder/Services/Firebase/Database.dart';
import 'package:medical_reminder/Services/Firebase/Firebase_Authorizer.dart';
import 'package:medical_reminder/Services/Notifications/Notification_API.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';

class NotificationSetter {
  static Future syncDatabaseWithNotifications() async {
    NotificationAPI.clearAllNotifications();
    List<Medication> data = await Database().getCurrentMedication();
    for(var med in data) {
      DateTime now = DateTime.now();

      NotificationAPI.scheduleNotification("Don't forget your ${med.medNickName}", "Just a friendly reminder to take ${med.medicationName}", timeOffSet, med.medId);
    }
  }
}