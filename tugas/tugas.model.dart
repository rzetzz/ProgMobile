// To parse this JSON data, do
//
//     final latihan = latihanFromJson(jsonString);

import 'dart:convert';

Latihan latihanFromJson(String str) => Latihan.fromJson(json.decode(str));

String latihanToJson(Latihan data) => json.encode(data.toJson());

class Latihan {
  int userId;
  int id;
  String title;
  bool completed;

  Latihan({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Latihan.fromJson(Map<String, dynamic> json) => Latihan(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}
