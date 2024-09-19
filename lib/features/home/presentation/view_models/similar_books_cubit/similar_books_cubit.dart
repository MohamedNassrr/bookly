import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/view_models/similar_books_cubit/similar_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitialState());

  static SimilarBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoadingState());

    var result = await homeRepo.fetchSimilarBooks(category: category);

    result.fold(
      (failure) => emit(
        SimilarBooksErrorState(
          failure.errorMessage,
        ),
      ),
      (books) => emit(
        SimilarBooksSuccessState(
          books,
        ),
      ),
    );
  }
}
