import 'package:flutter/material.dart';

class AlbumElement extends StatelessWidget {
  const AlbumElement({Key? key, required this.title, required this.userId, required this.id}) : super(key: key);
  
  final int id;
  final int userId;
  final String title;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          children: [
            SizedBox(
                width: width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 0.5, left: 8.0, right: 8.0),
                  child: Text(
                      "id: ${id.toString()}",
                      maxLines: 1,
                      textAlign: TextAlign.left,
                  ),
                ),
            ),
            SizedBox(
                width: width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 0.5, left: 8.0, right: 8.0),
                  child: Text(
                      "userId: ${userId.toString()}",
                    maxLines: 1,
                    textAlign: TextAlign.right,
                  ),
                )
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0.5, bottom: 8.0, left: 8.0, right: 8.0),
          child: SizedBox(
            width: width,
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
      ],
    );
  }
}
