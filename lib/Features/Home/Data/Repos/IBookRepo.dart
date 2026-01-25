
import 'package:bookly_app/Core/Utils/Fealures/Fealure.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class IBookRepo {
  Future<Either<Fealure, BookModel>> fetchFeaturedBooks();
  Future<Either<Fealure, BookModel>> fetchMostRelevantBooks();
  Future<Either<Fealure, BookModel>> fetchSimilarBooks(String category);
}