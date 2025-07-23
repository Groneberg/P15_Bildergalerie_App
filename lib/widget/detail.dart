import 'package:flutter/material.dart';

// TODO scrollbar
import 'package:image_gallery_app/data/posts.dart';

class Detail extends StatelessWidget {
 final int index;
  
  const Detail({super.key, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Image.network(starTrekPosts[index].imageUrl),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                starTrekPosts[index].title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(starTrekPosts[index].date.toString(), style: TextStyle(fontWeight: FontWeight.w200)),
              Text(starTrekPosts[index].postText, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ],
    );
  }
}
