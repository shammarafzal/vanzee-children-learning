// To parse this JSON data, do
//
//     final getMe = getMeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<GetMe> getMeFromJson(String str) => List<GetMe>.from(json.decode(str).map((x) => GetMe.fromJson(x)));

String getMeToJson(List<GetMe> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetMe {
  GetMe({
    required this.id,
    required this.name,
    required this.email,
    required this.emailVerifiedAt,
    required this.age,
    required this.isAdmin,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  String email;
  dynamic emailVerifiedAt;
  String age;
  String isAdmin;
  DateTime createdAt;
  DateTime updatedAt;

  factory GetMe.fromJson(Map<String, dynamic> json) => GetMe(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    age: json["age"],
    isAdmin: json["is_admin"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "age": age,
    "is_admin": isAdmin,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
