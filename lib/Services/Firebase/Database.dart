import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medical_reminder/App_State.dart';
import 'package:medical_reminder/Services/Date_Time_Translator.dart';
import 'package:medical_reminder/Services/Firebase/Firebase_Initializer.dart';
import 'package:medical_reminder/Services/Medication_Dates.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';
import 'package:medical_reminder/Types/HistoryData.dart';

class Database {
  FirebaseFirestore firestore;

  Future initFirebase() async {
    if(AppState.isFirebaseInitialized == false) await FirebaseInitializer.initFlutterFire();
    //TODO: Handel Firebase init error
    if(AppState.firebaseError == true) print("Firebase Init Error");
    firestore = FirebaseFirestore.instance;
    firestore.settings = Settings(persistenceEnabled: true);
  }


  Future addMedication(String medName, String medNickName, Color medColor, String medType, List<String> medDays, TimeOfDay medTime) async {
    await initFirebase();
    CollectionReference medications = firestore.collection("Medications");

    await medications.add(({
      "medicationName": medName,
      "medColor": {
        "r": medColor.red,
        "g": medColor.green,
        "b": medColor.blue
      },
      "medNickName": medNickName,
      "amountLeft": 4,
      "dose": 500,
      "medType": medType == "Tablet" ? "T" : "P",
      "userID": FirebaseAuth.instance.currentUser.uid,
      "times": medDays.map((day) => "${DateTimeTranslator.shortDayToInt(day)} ${medTime.hour}:${medTime.minute}").toList(),
    }));
  }

  Future<List<Medication>> getCurrentMedication() async {
    print(DateTime.now().difference(AppState.lastCurrentMedicationUpdate));
    if(DateTime.now().difference(AppState.lastCurrentMedicationUpdate) < Duration(minutes: 5) && AppState.currentMedications != null) return AppState.currentMedications;
    print("getting info from the server");
    firestore = FirebaseFirestore.instance;
    var medications =  await firestore.collection("Medications").where("userID", isEqualTo: FirebaseAuth.instance.currentUser.uid).get();
    var list = List<Medication>();
    for(var med in medications.docs) {
      var stracuredData = Medication.fromJson(med.data());
      stracuredData.medId = med.id;
      list.add(stracuredData);
    }
    list = await MedicationDates().getMedicationsWithDateNTime(list);
    AppState.currentMedications = list;
    AppState.lastCurrentMedicationUpdate = DateTime.now();
    return list;
  }


  Future addHistory(String medID, bool taken, [DateTime timeTaken]) async {
    await initFirebase();
    CollectionReference medications = firestore.collection("History");
    await medications.add(({
      "MedID": medID,
      "Taken": taken,
      "TimeTaken": timeTaken,
      "userID": FirebaseAuth.instance.currentUser.uid
    }));
  }

  Future<List<History>> getHistory() async {
    await initFirebase();
    var historyItems =  await firestore.collection("History").where("userID", isEqualTo: FirebaseAuth.instance.currentUser.uid).get();
    print("rehgfuierh guihergui");
    print(historyItems.docs[0].data());
    List<History> list = List<History>();
    for(var historyItem in historyItems.docs) {
      var stracuredData = History.fromJson(historyItem.data());
      list.add(stracuredData);
    }
    return list;
  }



  }