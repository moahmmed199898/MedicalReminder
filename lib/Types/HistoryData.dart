// To parse this JSON data, do
//
//     final history = historyFromJson(jsonString);

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

List<History> historyFromJson(String str) => List<History>.from(json.decode(str).map((x) => History.fromJson(x)));

String historyToJson(List<History> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class History {
  History({
    this.medId,
    this.taken,
    this.timeTaken,
    this.userId,
    this.medName,
  });

  String medId;
  bool taken;
  Timestamp timeTaken;
  String userId;
  String medName;

  factory History.fromJson(Map<String, dynamic> json) => History(
    medId: json["medID"],
    taken: json["taken"],
    timeTaken: json["timeTaken"],
    userId: json["userID"],
    medName: json["medName"],
  );

  Map<String, dynamic> toJson() => {
    "medID": medId,
    "taken": taken,
    "timeTaken": timeTaken,
    "userID": userId,
    "medName": medName,
  };
}
