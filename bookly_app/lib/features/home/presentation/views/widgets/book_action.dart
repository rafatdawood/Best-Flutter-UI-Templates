import 'package:bookly_app/core/utils/function/launch_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ), text: '19.99\$',
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async{
                launchCustomUrl(context, bookModel.saleInfo?.buyLink??'');
              },
              backgroundColor: const Color(0XFFEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ), text: getText(bookModel),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if(bookModel.saleInfo?.isEbook == false){
      return 'Not Available';
    }else{
      return 'Preview';
    }
  }
}