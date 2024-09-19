import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/Book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/books_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{

  static const kHomeView = '/homeView';
  static const booksDetailsView = '/BooksDetailsView';
  static const kSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) => const HomeView(),
      ),
      GoRoute(
        path: booksDetailsView,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
            create: (context) => SimilarBooksCubit(
              getIt.get<HomeRepoImpl>(),
            ),
            child:   BooksDetailsView(
              bookModel: state.extra as BookModel,
            )
        ),
      ),
    ],
  );
}