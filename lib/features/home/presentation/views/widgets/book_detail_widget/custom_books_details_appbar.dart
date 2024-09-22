import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class CustomBooksDetailAppBar extends StatelessWidget {
  const CustomBooksDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: (){
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.close,
          ),
        ),
        IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.shopping_cart_outlined,
          ),
        ),
      ],
    );
  }
}
