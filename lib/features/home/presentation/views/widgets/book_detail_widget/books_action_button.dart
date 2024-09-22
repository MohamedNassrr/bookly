import 'package:bookly/core/utils/functions/lunch_url.dart';
import 'package:bookly/core/widgets/books_action.dart';
import 'package:bookly/features/home/data/models/book_model/Book_model.dart';
import 'package:flutter/material.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Row(
        children: [
         const Expanded(
            child: BooksAction(
              text: 'Free',
              textColor: Colors.black,
              backGroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft:  Radius.circular(16.0),
              ),
            ),
          ),
          Expanded(
            child: BooksAction(
              onPressed: () async {
                lunchCustomUrl(context, bookModel.volumeInfo.previewLink!);
              },
              text: getText(bookModel),
              textColor: Colors.white,
              backGroundColor: const Color(0xffEF8262),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16.0),
                bottomRight:  Radius.circular(16.0),
              ),
              textSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }

 String getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink == null){
      return 'Not Available';
    }else{
      return 'preview';
    }
 }
}
