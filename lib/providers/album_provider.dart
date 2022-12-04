import 'package:apptaller/models/album_list.dart';
import 'package:flutter/material.dart';
import '../helpers/constants.dart';
import '../models/album_list.dart';
import 'package:http/http.dart' as http;


class AlbumProvider extends ChangeNotifier {
  AlbumList? albumResult;

  AlbumProvider() {
    getAllAlbums();
  }

  void getAllAlbums() async {
    final jsonData = await _getJsonData(Constants.baseURL, Constants.albumsPath);
    albumResult = AlbumList.fromJson(jsonData);
    notifyListeners();
  }

  Future<String> _getJsonData(String baseUrl, String path) async {
    final url = Uri.https(baseUrl, path);
    final response = await http.get(url);

    if (response.statusCode != 200) {
      return "Error en la peticion";
    }

    return response.body;
  }
}