import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:medical_reminder/Components/HomeButtons/Home_Buttons_Manager.dart';
import 'file:///C:/Users/alkhafml/AndroidStudioProjects/medical_reminder/lib/Services/Notifications/Notification_API.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  @override
  initState() {
    super.initState();

    var initializationSettingsAndroid = new AndroidInitializationSettings('app_icon');
    var initializationSettingsIOS = new IOSInitializationSettings();
    var initializationSettings = InitializationSettings(iOS: initializationSettingsIOS, android: initializationSettingsAndroid);
    NotificationAPI.flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    NotificationAPI.flutterLocalNotificationsPlugin.initialize(initializationSettings, onSelectNotification: NotificationAPI.onSelectNotificationHandler);
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Medical Reminder"),
        ),
        body:  HomeButtonsManager()
    );
  }

}
