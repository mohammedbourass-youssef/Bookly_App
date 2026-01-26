import 'package:bookly_app/Core/Utils/Fealures/Fealure.dart';
import 'package:bookly_app/Core/Utils/Helper/HttpHelper.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Data/Repos/IBookRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Bookserviceimpl implements IBookRepo {
  final Httphelper _httphelper;

  Bookserviceimpl(this._httphelper);
  @override
  Future<Either<Fealure, BookModel>> fetchFeaturedBooks() async {
    try {
      var response =await  _httphelper.get('?q=subject:fiction&orderBy=newest');
        var books = BookModel.fromMap(response.data!);
        return Right(books);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFealure.fromDioError(e));
      }
      else {
        return Left(ServerFealure('Unexpected Error Try again ${e.toString()}'));
      }
      
    }
  }
  
  @override
  Future<Either<Fealure, BookModel>> fetchMostRelevantBooks() async {
    try {
      var response =await  _httphelper.get('?q=programming&orderBy=relevance');
        var books = BookModel.fromMap(response.data!);
        return Right(books);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFealure.fromDioError(e));
      }
      else {
        return Left(ServerFealure('Unexpected Error Try again ${e.toString()}'));
      }
      
    }
  }
  
  @override
  Future<Either<Fealure, BookModel>> fetchSimilarBooks(String category) {
    // TODO: implement fetchSimilarBooks
    throw UnimplementedError();
  }



}