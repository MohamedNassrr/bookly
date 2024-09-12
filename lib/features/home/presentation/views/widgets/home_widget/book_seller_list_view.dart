import 'package:bookly/features/home/presentation/views/widgets/home_widget/best_seller_item.dart';
import 'package:flutter/material.dart';

class BookSellerListView extends StatelessWidget {
  const BookSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child:  BestSellerListItem(),
        );
      },
    );
  }
}