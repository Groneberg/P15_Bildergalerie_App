import 'package:flutter/material.dart';
import 'package:image_gallery_app/widget/profile.dart';

class ProfileScreen extends StatelessWidget {
  final int index;
  const ProfileScreen({super.key, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        backgroundColor: Color.fromRGBO(193, 199, 48, 1.0),
        foregroundColor: Color.fromRGBO(167, 19, 19, 1.0),
      ),
      body: Profile(index: index),
    );
  }
}
