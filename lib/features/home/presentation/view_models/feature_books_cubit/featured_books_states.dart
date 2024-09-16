import 'package:bookly/features/home/data/models/book_model/Book_model.dart';

abstract class FeaturedBooksStates {}

class FeaturedBooksInitialStates extends FeaturedBooksStates{}

class FeaturedBooksLoadingStates extends FeaturedBooksStates{}

class FeaturedBooksErrorStates extends FeaturedBooksStates{
  final String error;

  FeaturedBooksErrorStates(this.error);
}

class FeaturedBooksSuccessStates extends FeaturedBooksStates{
  final List<BookModel> books;

  FeaturedBooksSuccessStates(this.books);
}
