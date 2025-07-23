import 'package:flutter/material.dart';
import 'package:image_gallery_app/data/posts.dart';
import 'package:image_gallery_app/screens/detail_screen.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      itemCount: starTrekPosts.length,
      itemBuilder: (BuildContext context, int index) {
        final post = starTrekPosts[index];

        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(index: index),
              ),
            );
          },
          child: Card(
            elevation: 4,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: Image.network(
                    // height: 426,
                    // width: 240,
                    starTrekPosts[index].imageUrl,
                    fit: BoxFit.cover,
                    // errorBuilder: ,
                  ),
                ),
                Expanded(
                  flex: 1, // Der Textbereich nimmt 2 Teile des Platzes ein
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 12.0,
                          ),
                          maxLines: 2, // Maximal 2 Zeilen für den Titel
                          overflow:
                              TextOverflow.ellipsis, // Bei Überlauf ... anzeigen
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
