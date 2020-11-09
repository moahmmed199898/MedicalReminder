import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Components/MedicationCard/Medication_Card.dart';
import 'package:medical_reminder/Services/Firebase/Database.dart';
import 'package:medical_reminder/Types/HistoryData.dart';

class HistoryPage extends StatefulWidget {
  _HistoryPage createState() => _HistoryPage();
}


class _HistoryPage extends State<HistoryPage> {
  bool loading = true;
  List<History> historyItems;
  Database database;
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    database = Database();
    historyItems = await database.getHistory();
    setState(() {
      loading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(loading) {
      return Scaffold(
        appBar: AppBar(),
        body: Container(
          alignment: Alignment.center,
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
          children: historyItems.map((e) => MedicationCard("Cholesterol", "Good Job you took it", FontAwesomeIcons.check, Colors.green)).toList(),
        ),
      ));
    }
  }

}