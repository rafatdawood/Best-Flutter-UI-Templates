import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBookRatting extends StatelessWidget {
  const SearchBookRatting({super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.count, required this.rating});

  final MainAxisAlignment mainAxisAlignment;
  final int count;
  final num rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,size: 14,
          color: Color(0XFFFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text('(${count.toString()})', style: Styles.textStyle14),
        ),
      ],
    );
  }
}
