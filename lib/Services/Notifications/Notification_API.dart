import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:medical_reminder/App_State.dart';
import 'package:medical_reminder/Pages/Notification/Notification_Page.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationAPI {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  static Future showNotificationWithDefaultSound(String title, String description, String payload) async {
    var androidPlatformChannelSpecifics = new AndroidNotificationDetails('0', 'your channel name', 'your channel description', importance: Importance.max, priority: Priority.high);
    var iOSPlatformChannelSpecifics = new IOSNotificationDetails();
    var platformChannelSpecifics = new NotificationDetails(iOS: iOSPlatformChannelSpecifics, android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(0, title, description, platformChannelSpecifics,  payload: payload,);
  }


  static Future onSelectNotificationHandler(String payload) async {
    BuildContext context = AppState.homeContext;
    Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage(payload),));
  }


  static Future scheduleNotification(String title, String description, tz.TZDateTime time, String payload) async {
    final String currentTimeZone = await FlutterNativeTimezone.getLocalTimezone();
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation(currentTimeZone));
    await flutterLocalNotificationsPlugin.zonedSchedule(0, title, description, time, const NotificationDetails(
            android: AndroidNotificationDetails('0','your channel name', 'your channel description',)),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        payload: payload
    );
  }

  static Future clearAllNotifications() async {
    await flutterLocalNotificationsPlugin.cancelAll();
  }
}