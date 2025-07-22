import 'package:flutter/material.dart';

// TODO scrollbar
import 'package:image_gallery_app/data/posts.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Image.network(starTrekPosts[0].imageUrl),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                starTrekPosts[0].title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(starTrekPosts[0].date.toString(), style: TextStyle(fontWeight: FontWeight.w200)),
              Text(starTrekPosts[0].postText, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ],
    );
  }
}
