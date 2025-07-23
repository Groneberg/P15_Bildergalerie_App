import 'package:flutter/material.dart';
import 'package:image_gallery_app/widget/detail.dart';

class DetailScreen extends StatelessWidget {
  final int index;
  const DetailScreen({super.key, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        backgroundColor: Color.fromRGBO(167, 19, 19, 1.0),
        foregroundColor: Color.fromRGBO(193, 199, 48, 1.0),
      ),
      body: Detail(index: index),
    );
  }
}
