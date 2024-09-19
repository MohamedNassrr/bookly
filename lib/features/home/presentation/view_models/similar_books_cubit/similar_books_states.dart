import 'package:bookly/features/home/data/models/book_model/Book_model.dart';

abstract class SimilarBooksStates {}

class SimilarBooksInitialState extends SimilarBooksStates{}

class SimilarBooksLoadingState extends SimilarBooksStates{}

class SimilarBooksErrorState extends SimilarBooksStates{
  final String error;

  SimilarBooksErrorState(this.error);
}

class SimilarBooksSuccessState extends SimilarBooksStates{
  final List<BookModel> books;

  SimilarBooksSuccessState(this.books);
}