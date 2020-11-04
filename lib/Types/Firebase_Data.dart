// To parse this JSON data, do
//
//     final medications = medicationsFromJson(jsonString);

import 'dart:convert';

List<Medication> medicationsFromJson(String str) => List<Medication>.from(json.decode(str).map((x) => Medication.fromJson(x)));

String medicationsToJson(List<Medication> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Medication {
  Medication({
    this.medicationName,
    this.medColor,
    this.medNickName,
    this.medInterval,
    this.amountLeft,
    this.dose,
    this.medType,
  });

  String medicationName;
  MedColor medColor;
  String medNickName;
  List<MedInterval> medInterval;
  int amountLeft;
  int dose;
  String medType;

  factory Medication.fromJson(Map<String, dynamic> json) => Medication(
    medicationName: json["medicationName"],
    medColor: MedColor.fromJson(json["medColor"]),
    medNickName: json["medNickName"],
    medInterval: List<MedInterval>.from(json["medInterval"].map((x) => MedInterval.fromJson(x))),
    amountLeft: json["amountLeft"],
    dose: json["dose"],
    medType: json["medType"],
  );

  Map<String, dynamic> toJson() => {
    "medicationName": medicationName,
    "medColor": medColor.toJson(),
    "medNickName": medNickName,
    "medInterval": List<dynamic>.from(medInterval.map((x) => x.toJson())),
    "amountLeft": amountLeft,
    "dose": dose,
    "medType": medType,
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

class MedInterval {
  MedInterval({
    this.day,
    this.time,
  });

  int day;
  List<String> time;

  factory MedInterval.fromJson(Map<String, dynamic> json) => MedInterval(
    day: json["Day"],
    time: List<String>.from(json["time"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "Day": day,
    "time": List<dynamic>.from(time.map((x) => x)),
  };
}
