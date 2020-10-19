import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';

import 'Medication_Card.dart';

class MedicationCardManager extends StatefulWidget {
  @override
  _MedicationCardManagerState createState() => _MedicationCardManagerState();
}

class _MedicationCardManagerState extends State<MedicationCardManager> {
  FirebaseData data = [
    {
      "MedicationName": "Acetaminophen",
      "MedColor": {"r": 255, "b": 255, "g": 255},
      "MedType": "Capsule",
      "MedNickName": "something",
      "Interval": 54564215154321,
      "AmountLeft": 10,
      "Dose": 500,
      "type": "Tablet"
    }
  ] as FirebaseData;

  @override
  Widget build(BuildContext context) {
    return MedicationCard("Hello", "bye", FontAwesomeIcons.calendar, Colors.amber);
  }
}
