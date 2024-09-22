import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({super.key, required this.nameImage});
  final String nameImage;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Image.asset('assets/images/$nameImage.png'),
    );
  }
}