import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/item.dart';
import 'package:bookly_app/Features/Home/Data/Services/BookServiceImpl.dart';
import 'package:flutter/foundation.dart';

part 'most_relevent_cubit_state.dart';

class MostReleventCubit extends Cubit<MostReleventCubitState> {
  MostReleventCubit({required this.bookserviceimpl}) : super(MostReleventInitial());
  final Bookserviceimpl bookserviceimpl;

  Future<void> fetchData() async {
    emit(MostReleventLoading());
    var result = await bookserviceimpl.fetchMostRelevantBooks();
    result.fold(
      (failure) {
        emit(MostReleventFealure(failure.errMessage));
      },
      (books) {
        emit(MostReleventSucces(books.items!));
      },
    );
  }
}
