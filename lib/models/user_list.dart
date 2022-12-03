import 'user.dart';
import 'dart:convert';

class UserList {
  UserList({required this.userList});

  List<User> userList;

  factory UserList.fromJson(String s) {
    List<Map<String,dynamic>>jsonData = json.decode(s);
    List<User> mappedList = List.of(jsonData.map((user) => User.fromMap(user)));
    return UserList(userList: mappedList);
  }
}