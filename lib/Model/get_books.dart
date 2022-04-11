// To parse this JSON data, do
//
//     final books = booksFromJson(jsonString);

import 'dart:convert';

List<Books> booksFromJson(String str) =>
    List<Books>.from(json.decode(str).map((x) => Books.fromJson(x)));

String booksToJson(List<Books> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Books {
  Books({
    required this.id,
    required this.title,
    required this.storyText,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.childVideos,
    required this.mouthVideos,
  });

  int id;
  String title;
  String storyText;
  String image;
  DateTime createdAt;
  DateTime updatedAt;
  List<Video> childVideos;
  List<Video> mouthVideos;

  factory Books.fromJson(Map<String, dynamic> json) => Books(
        id: json["id"],
        title: json["title"],
        storyText: json["storyText"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        childVideos: List<Video>.from(
            json["child_videos"].map((x) => Video.fromJson(x))),
        mouthVideos: List<Video>.from(
            json["mouth_videos"].map((x) => Video.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "storyText": storyText,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "child_videos": List<dynamic>.from(childVideos.map((x) => x.toJson())),
        "mouth_videos": List<dynamic>.from(mouthVideos.map((x) => x.toJson())),
      };
}

class Video {
  Video({
    required this.id,
    required this.booksId,
    required this.video,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String booksId;
  String video;
  DateTime createdAt;
  DateTime updatedAt;

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        id: json["id"],
        booksId: json["books_id"],
        video: json["video"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "books_id": booksId,
        "video": video,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
