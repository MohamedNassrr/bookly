import 'package:bookly/features/home/presentation/views/widgets/book_detail_widget/books_details_view_body.dart';
import 'package:flutter/material.dart';

class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BooksDetailsViewBody(),
      ),
    );
  }
}
