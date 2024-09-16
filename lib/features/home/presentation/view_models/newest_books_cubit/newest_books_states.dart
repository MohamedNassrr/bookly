import 'package:bookly/features/home/data/models/book_model/Book_model.dart';

abstract class NewestBooksStates {}

class NewestBooksInitialStates extends NewestBooksStates{}

class NewestBooksLoadingStates extends NewestBooksStates{}

class NewestBooksErrorStates extends NewestBooksStates{
  final String error;

  NewestBooksErrorStates(this.error);
}

class NewestBooksSuccessStates extends NewestBooksStates{
  final List<BookModel> books;

  NewestBooksSuccessStates(this.books);
}
