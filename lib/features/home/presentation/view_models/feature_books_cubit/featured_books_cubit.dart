import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/view_models/feature_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialStates());

  static FeaturedBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingStates());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) => emit(
        FeaturedBooksErrorStates(failure.errorMessage),
      ),
      (books) => emit(
        FeaturedBooksSuccessStates(books),
      ),
    );
  }
}
