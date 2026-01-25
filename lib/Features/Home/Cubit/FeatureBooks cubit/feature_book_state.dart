part of 'feature_book_cubit.dart';

@immutable
sealed class FeatureBookState {}

final class FeatureBookInitial extends FeatureBookState {}

final class FeatureBookLoading extends FeatureBookState {}

final class FeatureBookSuccess extends FeatureBookState {
  final BookModel books;
  FeatureBookSuccess(this.books);
}

final class FeatureBookFailure extends FeatureBookState {
  final String errMessage;
  FeatureBookFailure(this.errMessage);
}
