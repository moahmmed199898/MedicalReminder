import 'package:flutter/material.dart';
import 'package:medical_reminder/Pages/Add_Page.dart';
import 'package:medical_reminder/Pages/Alerts_Page.dart';
import 'package:medical_reminder/Pages/Auth_page.dart';
import 'package:medical_reminder/Pages/Current_Health_Page.dart';
import 'package:medical_reminder/Pages/Notification/Notification_Yes_Page.dart';
import 'Pages/History_Page.dart';
import 'package:medical_reminder/Pages/Notification/Notification_Page.dart';

import 'Pages/Home_Page.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData.light(),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/CurrentMed" : (context) => CurrentHealthPage(),
        "/auth": (context) => AuthPage(),
        "/add": (context) => AddPage(),
        "/Notification": (context) => NotificationPage(null),
        "/NotificationYes": (context) => NotificationYesPage(null),
        "/History": (context) => HistoryPage(),
        "/Alerts": (context) => AlertsPage()
      },
    ));
