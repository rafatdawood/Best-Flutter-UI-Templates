import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: bookModel),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(imageURL: bookModel.volumeInfo.imageLinks?.thumbnail??""),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),

                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Expanded(

                     child: Text(
                      bookModel.volumeInfo.authors?[0]??'Unknown author',
                      style: Styles.textStyle14,
                       maxLines: 1,
                                       ),
                   ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(count: bookModel.volumeInfo.ratingsCount ?? 0, rating: bookModel.volumeInfo.averageRating ?? 0),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

