// To parse this JSON data, do
//
//     final alert = alertFromJson(jsonString);

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

List<Alert> alertFromJson(String str) => List<Alert>.from(json.decode(str).map((x) => Alert.fromJson(x)));

String alertToJson(List<Alert> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Alert {
  Alert({
    this.created,
    this.dismiseed,
    this.lowOnPills,
    this.notTaken,
    this.medId,
    this.userId,
    this.medName,
  });

  Timestamp created;
  bool dismiseed;
  bool lowOnPills;
  bool notTaken;
  String medId;
  String userId;
  String medName;
  String alertID;

  factory Alert.fromJson(Map<String, dynamic> json) => Alert(
    created: json["created"],
    dismiseed: json["dismiseed"],
    lowOnPills: json["lowOnPills"],
    notTaken: json["notTaken"],
    medId: json["medID"],
    userId: json["userID"],
    medName: json["medName"],
  );

  Map<String, dynamic> toJson() => {
    "created": created,
    "dismiseed": dismiseed,
    "lowOnPills": lowOnPills,
    "notTaken": notTaken,
    "medID": medId,
    "userID": userId,
    "medName": medName,
  };
}
