import 'package:bookly/features/home/data/models/book_model/Book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_detail_widget/books_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_detail_widget/custom_books_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_detail_widget/similar_book_section.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                const CustomBooksDetailAppBar(),
                BookDetailsSection(
                 book: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
