part of 'most_relevent_cubit_cubit.dart';

@immutable
sealed class MostReleventCubitState {}

final class MostReleventInitial extends MostReleventCubitState {}

final class MostReleventLoading extends MostReleventCubitState {}
final class MostReleventFealure extends MostReleventCubitState {
  final String errMessage;
  MostReleventFealure(this.errMessage);
}
final class MostReleventSucces extends MostReleventCubitState {
 final List<Item> books;
  MostReleventSucces(this.books);
}
