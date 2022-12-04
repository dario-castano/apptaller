// To parse this JSON data, do
//
//     final album = albumFromMap(jsonString);

import 'dart:convert';

class Album {
  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  final int userId;
  final int id;
  final String title;

  factory Album.fromJson(String str) => Album.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Album.fromDynamicMap(dynamic jsonmap) {
    Map<String, dynamic> casted = Map.castFrom(jsonmap);
    return Album(
        userId: casted["userId"],
        id: casted["id"],
        title: casted["title"]
    );
  }

  factory Album.fromMap(Map<String, dynamic> json) => Album(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
  );

  Map<String, dynamic> toMap() => {
    "userId": userId,
    "id": id,
    "title": title,
  };
}
