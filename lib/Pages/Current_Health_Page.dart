import 'package:flutter/material.dart';
import 'package:medical_reminder/Components/MedicationCard/Medication_Card_Manager.dart';

class CurrentHealthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Current Medication"),
        ),
        body: MedicationCardManager());
  }
}
