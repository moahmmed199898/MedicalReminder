import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Components/MedicationCard/Medication_Card.dart';
import 'package:medical_reminder/Services/Firebase/Database.dart';
import 'package:medical_reminder/Types/Alerts_Data.dart';

class AlertsPage extends StatefulWidget {
  _AlertsPage createState() => _AlertsPage();
}

class _AlertsPage extends State<AlertsPage> {
  bool _loading = true;
  List<Alert> alerts;
  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    alerts = await Database().getAlerts();
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(_loading) {
      return Scaffold(
        appBar: AppBar(title: Text("Alerts"),),
        body: Container(
          alignment: Alignment.center,
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: Text("Alerts"),),
        body: SingleChildScrollView(
          child: Column(
            children: alerts.map((e) => MedicationCard(
              e.medName,
              e.lowOnPills ? "You need to refill this medication": "You have forgotten to take this medication",
              e.lowOnPills ? FontAwesomeIcons.prescriptionBottle : FontAwesomeIcons.prescription,
              Colors.white,
              backgroundColor: e.lowOnPills ? Colors.deepOrangeAccent : Colors.red,
            )).toList(),
          ),
        )

      );
    }
  }

}