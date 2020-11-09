// To parse this JSON data, do
//
//     final history = historyFromJson(jsonString);

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

History historyFromJson(String str) => History.fromJson(json.decode(str));

String historyToJson(History data) => json.encode(data.toJson());

class History {
  History({
    this.timeTaken,
    this.taken,
    this.medId,
    this.userId,
  });

  Timestamp timeTaken;
  bool taken;
  String medId;
  String userId;

  factory History.fromJson(Map<String, dynamic> json) => History(
    timeTaken: json["TimeTaken"],
    taken: json["Taken"],
    medId: json["MedID"],
    userId: json["userID"],
  );

  Map<String, dynamic> toJson() => {
    "TimeTaken": timeTaken,
    "Taken": taken,
    "MedID": medId,
    "userID": userId,
  };
}
