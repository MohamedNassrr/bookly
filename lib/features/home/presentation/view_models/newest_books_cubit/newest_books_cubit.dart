import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/view_models/newest_books_cubit/newest_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitialStates());

  static NewestBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoadingStates());
    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure) => emit(
        NewestBooksErrorStates(failure.errorMessage),
      ),
      (books) => emit(
        NewestBooksSuccessStates(books),
      ),
    );
  }
}
