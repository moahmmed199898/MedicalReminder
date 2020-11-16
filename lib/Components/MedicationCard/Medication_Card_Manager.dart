import 'package:flutter/material.dart';
import 'package:medical_reminder/Services/Alerts_Services.dart';
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
    init();

  }

  Future init() async {
    await getData();
    await AlertServices.checkForLowMeds();
  }

  Future getData() async {
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
