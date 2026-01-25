import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Data/Services/BookServiceImpl.dart';
import 'package:flutter/material.dart';


part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  final Bookserviceimpl bookserviceimpl;

  FeatureBookCubit({required this.bookserviceimpl})
    : super(FeatureBookInitial());

  Future<void> fetchFeaturedBooks() async {
    emit(FeatureBookLoading());
    var result = await bookserviceimpl.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeatureBookFailure(failure.errMessage));
      },
      (books) {
        emit(FeatureBookSuccess(books));
      },
    );
  }
}
