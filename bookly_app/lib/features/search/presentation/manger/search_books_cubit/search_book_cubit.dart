import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());
  final SearchRepo searchRepo;
  Future<void> fetchSearchBook({required String title})async{
    emit(SearchBookLoading());
    var result = await searchRepo.fetchSearchBook(title: title);
    result.fold((failure) {
      emit(SearchBookFailure(failure.errorMessage));
    }, (books) {
      emit(SearchBookSuccess(books));
    },);
  }
}
