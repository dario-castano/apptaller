import 'album.dart';
import 'dart:convert';

class AlbumList {
  AlbumList({required this.albumList});

  List<Album> albumList;

  factory AlbumList.fromJson(String s) {
    List<Map<String,dynamic>>jsonData = json.decode(s);
    List<Album> mappedList = List.of(jsonData.map((album) => Album.fromMap(album)));
    return AlbumList(albumList: mappedList);
  }
}