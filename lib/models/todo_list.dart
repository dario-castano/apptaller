import 'todo.dart';
import 'dart:convert';

class TodoList {
  TodoList({required this.todoList});

  List<Todo> todoList;

  factory TodoList.fromJson(String s) {
    List<Map<String,dynamic>>jsonData = json.decode(s);
    List<Todo> mappedList = List.of(jsonData.map((todo) => Todo.fromMap(todo)));
    return TodoList(todoList: mappedList);
  }
}