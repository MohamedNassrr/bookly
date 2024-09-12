import 'package:bookly/core/widgets/books_action.dart';
import 'package:flutter/material.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Row(
        children: [
          Expanded(
            child: BooksAction(
              text: '19.99 €',
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
              text: 'Free Preview',
              textColor: Colors.white,
              backGroundColor: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
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
}
