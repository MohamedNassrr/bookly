import 'package:bookly/features/home/presentation/views/widgets/book_detail_widget/books_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_detail_widget/custom_books_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_detail_widget/similar_book_section.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                CustomBooksDetailAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
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
