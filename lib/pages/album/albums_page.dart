import 'package:apptaller/providers/providers.dart';
import 'package:apptaller/widgets/album/album_element.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlbumsPage extends StatelessWidget {
  const AlbumsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getAlbumListProvider = Provider.of<AlbumListProvider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text("All albums available"),
      ),
      body: ListView(
        children: List.of(
            getAlbumListProvider
                .albumListResult
                .albumList
                .map((e) => AlbumElement(
              title: e.title,
              id: e.id,
              userId: e.userId,
            ))),
      ),
    );
  }
}