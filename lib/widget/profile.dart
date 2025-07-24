import 'package:flutter/material.dart';
import 'package:image_gallery_app/data/users.dart';

class Profile extends StatelessWidget {
  final int index;
  const Profile({super.key, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            CircleAvatar(
              radius: 120.00,
              backgroundImage: NetworkImage(starTrekUsers[index].profileImage),
            ),
            Text(
              starTrekUsers[index].name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500
              ),
            ),
            Text(
              starTrekUsers[index].profession,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700
              ),
            ),
            Text(
              starTrekUsers[index].description,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),
            )
          ],
        ),
      ),
    );
  }
}