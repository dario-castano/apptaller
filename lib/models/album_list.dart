import 'album.dart';
import 'dart:convert';

class AlbumList {
  AlbumList({required this.albumList});

  List<Album> albumList;

  factory AlbumList.fromJson(String s) {
    List<dynamic> jsonData = json.decode(s);
    List<Album> mappedList = List.of(jsonData.map((album) => Album.fromDynamicMap(album)));

    return AlbumList(albumList: mappedList);
  }
}