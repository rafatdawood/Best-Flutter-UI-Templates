import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SearchCustomBookImage extends StatelessWidget {
  const SearchCustomBookImage({super.key, required this.imageURL});

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageURL,
            placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
            errorWidget: (context, url, error) => const Center(child: Icon(Icons.error_outline)),
          ),
        ),
      ),
    );
  }
}
