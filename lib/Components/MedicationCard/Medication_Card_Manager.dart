import 'package:flutter/material.dart';
import 'package:medical_reminder/Services/Firebase/Database.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';

import '../../Types/Firebase_Data.dart';
import 'Medication_Card_Maker.dart';

class MedicationCardManager extends StatefulWidget {
  @override
  _MedicationCardManagerState createState() => _MedicationCardManagerState();
}

class _MedicationCardManagerState extends State<MedicationCardManager> {
  // final String data = '[ { "medicationName": "hello", "medColor": { "r": 0, "g": 0, "b": 0 }, "medNickName": "NiceName", "medInterval": [ { "Day": 1, "time": ["2:30", "14:40"] } ], "amountLeft": 4, "dose": 500, "medType": "T" }, { "medicationName": "hello", "medColor": { "r": 0, "g": 0, "b": 0 }, "medNickName": "NiceName", "medInterval": [ { "Day": 6, "time": ["16:30", "14:40"] } ], "amountLeft": 4, "dose": 500, "medType": "T" } ]';
  List<Medication> medications;

  @override
  void initState() {
    super.initState();
    getData();
  }
  void getData() async {
    List<Medication> data = await Database(context).getCurrentMedication();
    setState(() {
      medications = data;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: medications.map((e) => MedicationCardMaker(e)).toList(),
    );


  }
}
