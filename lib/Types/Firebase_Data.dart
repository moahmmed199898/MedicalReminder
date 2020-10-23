// To parse this JSON data, do
//
//     final medications = medicationsFromJson(jsonString);

import 'dart:convert';

List<Medications> medicationsFromJson(String str) => List<Medications>.from(json.decode(str).map((x) => Medications.fromJson(x)));

String medicationsToJson(List<Medications> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Medications {
  Medications({
    this.medicationName,
    this.medColor,
    this.medNickName,
    this.interval,
    this.amountLeft,
    this.dose,
    this.medType,
  });

  String medicationName;
  MedColor medColor;
  String medNickName;
  Interval interval;
  int amountLeft;
  int dose;
  String medType;

  factory Medications.fromJson(Map<String, dynamic> json) => Medications(
    medicationName: json["medicationName"],
    medColor: MedColor.fromJson(json["medColor"]),
    medNickName: json["medNickName"],
    interval: Interval.fromJson(json["interval"]),
    amountLeft: json["amountLeft"],
    dose: json["dose"],
    medType: json["medType"],
  );

  Map<String, dynamic> toJson() => {
    "medicationName": medicationName,
    "medColor": medColor.toJson(),
    "medNickName": medNickName,
    "interval": interval.toJson(),
    "amountLeft": amountLeft,
    "dose": dose,
    "medType": medType,
  };
}

class Interval {
  Interval({
    this.week,
    this.time,
  });

  List<String> week;
  List<String> time;

  factory Interval.fromJson(Map<String, dynamic> json) => Interval(
    week: List<String>.from(json["week"].map((x) => x)),
    time: List<String>.from(json["time"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "week": List<dynamic>.from(week.map((x) => x)),
    "time": List<dynamic>.from(time.map((x) => x)),
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
