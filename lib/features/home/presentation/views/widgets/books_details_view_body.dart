import 'package:bookly/features/home/presentation/views/widgets/custom_books_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child:  Column(
        children: [
          const CustomBooksDetailAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * .16,
            ),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
