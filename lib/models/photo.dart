// To parse this JSON data, do
//
//     final photo = photoFromMap(jsonString);

import 'dart:convert';

class Photo {
  Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  factory Photo.fromJson(String str) => Photo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Photo.fromMap(Map<String, dynamic> json) => Photo(
    albumId: json["albumId"],
    id: json["id"],
    title: json["title"],
    url: json["url"],
    thumbnailUrl: json["thumbnailUrl"],
  );

  Map<String, dynamic> toMap() => {
    "albumId": albumId,
    "id": id,
    "title": title,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
  };
}
