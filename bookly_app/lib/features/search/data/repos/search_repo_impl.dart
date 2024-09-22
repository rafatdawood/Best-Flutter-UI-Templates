import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo{
  final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchSearchBook({required String title}) async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?Filtering=free-ebooks&q=$title&Sorting=newest");
      List<BookModel> books = [];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}