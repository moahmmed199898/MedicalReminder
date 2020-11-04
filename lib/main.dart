import 'package:flutter/material.dart';
import 'package:medical_reminder/Pages/Add_Page.dart';
import 'package:medical_reminder/Pages/Auth_page.dart';

import 'package:medical_reminder/Pages/Current_Health_Page.dart';
import 'Pages/Home_Page.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData.light(),
      initialRoute: "/CurrentHealth",
      routes: {
        "/": (context) => HomePage(),
        "/CurrentHealth" : (context) => CurrentHealthPage(),
        "/auth": (context) => AuthPage(),
        "/add": (context) => AddPage(),
      },
    ));
