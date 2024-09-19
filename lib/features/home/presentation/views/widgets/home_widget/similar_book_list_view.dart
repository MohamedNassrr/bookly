import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: CustomBookImage(
              imageUrl:
                  'https://img.freepik.com/free-vector/modern-company-annual-report-business-red-template_1017-33566.jpg?w=740&t=st=1726754077~exp=1726754677~hmac=3c68a9bc8d4ee9db5432a425cc0d5148d180c623eaaa8468c42ae9ee017ea653',
            ),
          );
        },
      ),
    );
  }
}
