import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_models/newest_books_cubit/newest_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_widget/best_seller_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_widget/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookSellerListView extends StatelessWidget {
  const BookSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
      builder: (context, state) {
        if (state is NewestBooksSuccessStates) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: BooksSellerListItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksErrorStates) {
          return CustomErrorWidget(errorMessage: state.error);
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
