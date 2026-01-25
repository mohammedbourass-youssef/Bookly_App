import 'package:bookly_app/Core/Utils/Fealures/Fealure.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Data/Repos/IBookRepo.dart';
import 'package:dartz/dartz.dart';

class Bookserviceimpl implements IBookRepo {
  @override
  Future<Either<Fealure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Fealure, List<BookModel>>> fetchMostRelevantBooks() {
    // TODO: implement fetchMostRelevantBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Fealure, List<BookModel>>> fetchSimilarBooks(String category) {
    // TODO: implement fetchSimilarBooks
    throw UnimplementedError();
  }


}