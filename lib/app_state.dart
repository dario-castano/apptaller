import 'package:apptaller/widgets/main_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:apptaller/providers/providers.dart';

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AlbumProvider(), lazy: false)
      ],
      child: const MainWidget(),
    );
  }
}