import 'dart:io';

import 'package:apptaller/helpers/exception_messages.dart';
import 'package:apptaller/models/models.dart';
import 'package:flutter/material.dart';
import '../helpers/constants.dart';
import 'package:http/http.dart' as http;


class AlbumListProvider extends ChangeNotifier {
  AlbumListProvider() {
    getAllAlbums();
  }

  AlbumList albumListResult = AlbumList(
      albumList: List.from([Album(userId: 0, id: 0, title: "")]));

  void getAllAlbums() async {
    final jsonData = await _getJsonData(Constants.baseURL, Constants.albumsPath);
    albumListResult = AlbumList.fromJson(jsonData);
    notifyListeners();
  }

  Future<String> _getJsonData(String baseUrl, String path) async {
    final url = Uri.https(baseUrl, path);
    final response = await http.get(url, headers: {"Accept":"application/json"});

    if (response.statusCode != 200) {
      throw HttpException(ExceptionMessages.httpErrorMessage, uri: url);
    }

    return response.body;
  }
}