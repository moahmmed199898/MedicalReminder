import 'package:flutter/material.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';

import '../../Types/Firebase_Data.dart';
import 'Medication_Card_Maker.dart';

class MedicationCardManager extends StatefulWidget {
  @override
  _MedicationCardManagerState createState() => _MedicationCardManagerState();
}

class _MedicationCardManagerState extends State<MedicationCardManager> {
  final String data = '[ { "medicationName": "hello", "medColor": { "r": 0, "g": 0, "b": 0 }, "medNickName": "NiceName", "medInterval": [ { "Day": 1, "time": ["2:30", "14:40"] } ], "amountLeft": 4, "dose": 500, "medType": "T" }, { "medicationName": "hello", "medColor": { "r": 0, "g": 0, "b": 0 }, "medNickName": "NiceName", "medInterval": [ { "Day": 6, "time": ["16:30", "14:40"] } ], "amountLeft": 4, "dose": 500, "medType": "T" } ]';
  List<Medications> decoded;

  @override
  Widget build(BuildContext context) {
    decoded = medicationsFromJson(data);
    return Column(
      children: decoded.map((e) => MedicationCardMaker(e)).toList(),
    );


  }
}
