import 'comment.dart';
import 'dart:convert';

class CommentList {
  CommentList({required this.commentList});

  List<Comment> commentList;

  factory CommentList.fromJson(String s) {
    List<Map<String,dynamic>>jsonData = json.decode(s);
    List<Comment> mappedList = List.of(jsonData.map((comment) => Comment.fromMap(comment)));
    return CommentList(commentList: mappedList);
  }
}