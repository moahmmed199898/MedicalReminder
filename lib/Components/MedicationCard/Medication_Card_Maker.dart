import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Components/MedicationCard/Medication_Card.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';

class MedicationCardMaker extends StatelessWidget {
  String medName;
  String subText;
  IconData icon;
  Color iconColor;

  MedicationCardMaker(MedInfo medInfo) {
    medName = medInfo.medNickName;
    iconColor = Color.fromRGBO(medInfo.medColor.r, medInfo.medColor.g, medInfo.medColor.b, 1);
    if (medInfo.medType == "Tablet") {
      icon = FontAwesomeIcons.tablets;
    } else {
      icon = FontAwesomeIcons.pills;
    }
    DateTime currentDataTime = DateTime()
  }

  @override
  Widget build(BuildContext context) {
    return MedicationCard(medName, subText, icon, iconColor);
  }
}