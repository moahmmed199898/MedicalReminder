import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medical_reminder/App_State.dart';
import 'package:medical_reminder/Services/Date_Time_Translator.dart';
import 'package:medical_reminder/Services/Firebase/Firebase_Initializer.dart';
import 'package:medical_reminder/Services/Medication_Dates.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';
import 'package:medical_reminder/Types/HistoryData.dart';
import 'package:medical_reminder/Services/Notifications/Notification_Setter.dart';

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

    medications.add(({
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
    })).then((value) async {
      await NotificationSetter.syncDatabaseWithNotifications(forceUpdate: true);
    });

  }



  Future<List<Medication>> getCurrentMedication({bool forceUpdate = false}) async {
    print(DateTime.now().difference(AppState.lastCurrentMedicationUpdate));
    if(!forceUpdate && DateTime.now().difference(AppState.lastCurrentMedicationUpdate) < Duration(minutes: 1) && AppState.currentMedications != null) return AppState.currentMedications;
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


  Future addHistory(String medID,String medName, bool taken) async {
    await initFirebase();
    CollectionReference medications = firestore.collection("History");
    await medications.add(({
      "medID": medID,
      "taken": taken,
      "timeTaken": Timestamp.now(),
      "userID": FirebaseAuth.instance.currentUser.uid,
      "medName": medName,
    }));
  }

  Future<List<History>> getHistory() async {
    await initFirebase();
    var historyItems =  await firestore.collection("History").where("userID", isEqualTo: FirebaseAuth.instance.currentUser.uid).orderBy("timeTaken", descending: true).get();
    List<History> list = List<History>();
    for(var historyItem in historyItems.docs) {
      var structuredData = History.fromJson(historyItem.data());
      list.add(structuredData);
    }
    return list;
  }



  Future<Medication> getMedInfoFromID(medID) async {
    List<Medication> medications = await getCurrentMedication();
    Medication med = medications.singleWhere((element) => element.medId == medID);
    return med;
  }

  Future updateQuantity(String medID, int quantity) async {
    await initFirebase();
    await firestore.collection("Medications").doc("medID").update({
      "amountLeft": quantity
    });
  }



  }