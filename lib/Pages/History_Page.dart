import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Components/MedicationCard/Medication_Card.dart';
import 'package:medical_reminder/Constants.dart';
import 'package:medical_reminder/Services/Firebase/Database.dart';
import 'package:medical_reminder/Types/HistoryData.dart';
import 'package:intl/intl.dart';


class HistoryPage extends StatefulWidget {
  _HistoryPage createState() => _HistoryPage();
}


class _HistoryPage extends State<HistoryPage> {
  bool loading = true;
  List<History> historyItems;
  Database database;

  final DateFormat dateformatter = DateFormat('MM-dd-yyyy ');
  final DateFormat timeformatter = DateFormat('hh:mm a');
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
          children: historyItems.map((e) => MedicationCard(e.medName,
              "Good Job you took it on\n ${dateformatter.format(e.timeTaken.toDate())}at ${timeformatter.format(e.timeTaken.toDate())}",
              e.taken ? FontAwesomeIcons.check: FontAwesomeIcons.times,
              Colors.white,
              backgroundColor: e.taken ? Colors.green[800]: Colors.red,
          )).toList(),
        ),
      ));
    }
  }

}