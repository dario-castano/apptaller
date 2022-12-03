import 'photo.dart';
import 'dart:convert';

class PhotoList {
  PhotoList({required this.photoList});

  List<Photo> photoList;

  factory PhotoList.fromJson(String s) {
    List<Map<String,dynamic>>jsonData = json.decode(s);
    List<Photo> mappedList = List.of(jsonData.map((album) => Photo.fromMap(album)));
    return PhotoList(photoList: mappedList);
  }
}