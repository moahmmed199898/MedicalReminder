import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medical_reminder/App_State.dart';
import 'package:medical_reminder/Pages/Auth_page.dart';
import 'package:medical_reminder/Services/Firebase/Firebase_Initializer.dart';
import 'package:flutter/material.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';

class Database {
  FirebaseFirestore firestore;
  BuildContext context;
  Database(this.context);
  Future initFirebase() async {
    if(AppState.isFirebaseInitialized == false) await FirebaseInitializer.initFlutterFire();
    //TODO: Handel Firebase init error
    if(AppState.firebaseError == true) print("Firebase Init Error");
    firestore = FirebaseFirestore.instance;
    firestore.settings = Settings(persistenceEnabled: true);
  }

  Future checkLogin() async {
    if(AppState.credential == null) {
      await Navigator.pushNamed(context, "/auth");
    }
  }


  // String _medicationName = " ";
  // String _medNickName = " ";
  // Color _medColor = Color.fromRGBO(41, 135, 8, 1);
  // String _medType = "Tablet";
  // List<String> _medDays;
  // TimeOfDay _time = TimeOfDay(hour: 8, minute: 0);
  
  Future addMedication(String medName, String medNickName, Color medColor, String medType, List<String> medDays, TimeOfDay medTime) async {
    await initFirebase();
    await checkLogin();
    CollectionReference medications = firestore.collection("Medications");
    await medications.add(({
      "medicationName": medName,
      "medColor": {
        "r": medColor.red,
        "g": medColor.green,
        "b": medColor.blue
      },
      "medNickName": medNickName,
      "medInterval": [
        {
          "Day": medDays[0],
          "time": [
            "${medTime.hour}:${medTime.minute}"
          ]
      }
      ],
      "amountLeft": 4,
      "dose": 500,
      "medType": medType == "Tablet" ? "T" : "P",
      "userID": AppState.credential.user.uid
    }));
  }

  Future<List<Medication>> getCurrentMedication() async {
    await initFirebase();
    await checkLogin();
    var medications =  await firestore.collection("Medications").get();
    var list = List<Medication>();
    for(var med in medications.docs) {
      var stracuredData = Medication.fromJson(med.data());
      list.add(stracuredData);
    }
    return list;

  }
  
  
}