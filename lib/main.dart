import 'package:flutter/material.dart';

import 'package:medical_reminder/Pages/Current_Health_Page.dart';
import 'Pages/Home_Page.dart';

void main() => runApp(MaterialApp(
      initialRoute: "/CurrentHealth",
      routes: {
        "/": (context) => HomePage(),
        "/CurrentHealth" : (context) => CurrentHealthPage()
      },
    ));
