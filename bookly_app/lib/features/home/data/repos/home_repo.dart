import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import 'package:bookly_app/core/utils/models/book_model/book_model.dart';

abstract class HomeRepo{
  Future<Either<Failures,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failures,List<BookModel>>> fetchFeatureBooks();
  Future<Either<Failures,List<BookModel>>> fetchSimilarBooks({required String category});
}