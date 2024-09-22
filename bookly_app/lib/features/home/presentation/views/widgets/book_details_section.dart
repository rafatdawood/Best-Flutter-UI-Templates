import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .23),
            child:  CustomBookImage(imageURL: bookModel.volumeInfo.imageLinks?.thumbnail??"",),
          ),
          const SizedBox(height: 43),
          Text(
            bookModel.volumeInfo.title??'No Title',
            style: Styles.textStyle30,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Opacity(
            opacity: .7,
            child: Text(
              bookModel.volumeInfo.authors?[0]??'Unknown author',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 18),
          BookRating(count: bookModel.volumeInfo.ratingsCount??0,rating: bookModel.volumeInfo.ratingsCount??0,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 37),
          BookAction(bookModel: bookModel,),
        ],
      ),
    );
  }
}