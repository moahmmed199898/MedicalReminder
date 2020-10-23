import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Components/MedicationCard/Medication_Card.dart';

import '../../Types/Firebase_Data.dart';
import 'Medication_Card.dart';


class MedicationCardMaker extends StatelessWidget {
  String medName;
  String subText;
  IconData icon;
  Color iconColor;
  Medications medications;

  MedicationCardMaker(this.medications) {
    medName = medications.medNickName;
    //TODO: implement when the next med is due
    subText = 'Your next medication is at ';
    if(medications.medType == "T") icon = FontAwesomeIcons.tablets; else icon = FontAwesomeIcons.capsules;
    iconColor = Color.fromRGBO(medications.medColor.r, medications.medColor.g, medications.medColor.b, 1);
  }



  @override
  Widget build(BuildContext context) {

    return MedicationCard(medName, subText, icon, iconColor);
  }

}