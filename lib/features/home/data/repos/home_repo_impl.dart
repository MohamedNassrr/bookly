import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home/data/models/book_model/Book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try{
          books.add(BookModel.fromJson(item));
        }catch(e) {
          books.add(BookModel.fromJson(item));
        }

      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioError(e));
      }
      return left(ServerFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailures.fromDioError(e),
        );
      }
      return left(
        ServerFailures(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks({required String category}) async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailures.fromDioError(e),
        );
      }
      return left(
        ServerFailures(
          e.toString(),
        ),
      );
    }
  }
}


