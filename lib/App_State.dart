import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';
class AppState {
  static bool isFirebaseInitialized = false;
  static bool firebaseError = false;
  static UserCredential credential;
  static DateTime lastCurrentMedicationUpdate = DateTime.now();
  static List<Medication> currentMedications;
  static BuildContext homeContext;
}