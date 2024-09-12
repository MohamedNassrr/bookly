import 'package:bookly/features/home/presentation/views/widgets/custom_books_details_appbar.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: CustomBooksDetailAppBar(),
        ),
      ],
    );
  }
}
