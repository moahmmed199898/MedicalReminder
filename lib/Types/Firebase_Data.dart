// To parse this JSON data, do
//
//     final medication = medicationFromJson(jsonString);

import 'dart:convert';

List<Medication> medicationFromJson(String str) => List<Medication>.from(json.decode(str).map((x) => Medication.fromJson(x)));

String medicationToJson(List<Medication> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Medication {
  Medication({
    this.medicationName,
    this.medColor,
    this.medNickName,
    this.amountLeft,
    this.dose,
    this.medType,
    this.userId,
    this.times,
    this.interval,
    this.intervalMonthDay,
  });

  String medicationName;
  MedColor medColor;
  String medNickName;
  int amountLeft;
  int dose;
  String medType;
  String userId;
  List<String> times;
  String interval;
  int intervalMonthDay;

  factory Medication.fromJson(Map<String, dynamic> json) => Medication(
    medicationName: json["medicationName"],
    medColor: MedColor.fromJson(json["medColor"]),
    medNickName: json["medNickName"],
    amountLeft: json["amountLeft"],
    dose: json["dose"],
    medType: json["medType"],
    userId: json["userID"],
    times: List<String>.from(json["times"].map((x) => x)),
    interval: json["interval"],
    intervalMonthDay: json["intervalMonthDay"],
  );

  Map<String, dynamic> toJson() => {
    "medicationName": medicationName,
    "medColor": medColor.toJson(),
    "medNickName": medNickName,
    "amountLeft": amountLeft,
    "dose": dose,
    "medType": medType,
    "userID": userId,
    "times": List<dynamic>.from(times.map((x) => x)),
    "interval": interval,
    "intervalMonthDay": intervalMonthDay,
  };
}

class MedColor {
  MedColor({
    this.r,
    this.g,
    this.b,
  });

  int r;
  int g;
  int b;

  factory MedColor.fromJson(Map<String, dynamic> json) => MedColor(
    r: json["r"],
    g: json["g"],
    b: json["b"],
  );

  Map<String, dynamic> toJson() => {
    "r": r,
    "g": g,
    "b": b,
  };
}
