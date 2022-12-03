import 'post.dart';
import 'dart:convert';

class PostList {
  PostList({required this.postList});

  List<Post> postList;

  factory PostList.fromJson(String s) {
    List<Map<String,dynamic>>jsonData = json.decode(s);
    List<Post> mappedList = List.of(jsonData.map((post) => Post.fromMap(post)));
    return PostList(postList: mappedList);
  }
}