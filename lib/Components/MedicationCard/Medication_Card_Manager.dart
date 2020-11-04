import 'package:flutter/material.dart';
import 'package:medical_reminder/Services/Firebase/Database.dart';
import 'package:medical_reminder/Services/Firebase/Firebase_Authorizer.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';

import '../../Types/Firebase_Data.dart';
import 'Medication_Card_Maker.dart';

class MedicationCardManager extends StatefulWidget {
  @override
  _MedicationCardManagerState createState() => _MedicationCardManagerState();
}

class _MedicationCardManagerState extends State<MedicationCardManager> {
  List<Medication> medications;

  @override
  void initState() {
    super.initState();
    getData();
  }
  void getData() async {
    await FirebaseAuthorizer(context).checkIfUserIsLoggedIN();
    List<Medication> data = await Database().getCurrentMedication();
    setState(() {
      medications = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(medications == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Column(
      children: medications.map((e) => MedicationCardMaker(e)).toList(),
    );


  }
}
