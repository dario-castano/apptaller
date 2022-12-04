import 'package:flutter/material.dart';
import 'package:apptaller/pages/pages.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to JSONPlaceholder!',
      initialRoute: 'albums',
      routes: {
        'albums': (context) => const AlbumsPage(),
/*        'comments': (context) => const CommentsPage(),
        'photos': (context) => const PhotosPage(),
        'posts': (context) => const PostsPage(),
        'todos': (context) => const TodosPage(),
        'users': (context) => const UsersPage(),*/
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}