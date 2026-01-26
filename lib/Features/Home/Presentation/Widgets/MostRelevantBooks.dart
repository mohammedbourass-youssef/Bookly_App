import 'package:bookly_app/Core/Utils/Helper/ErrorMessageWidget.dart';
import 'package:bookly_app/Features/Home/Cubit/Most%20Relevent/most_relevent_cubit_cubit.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/item.dart';
import 'package:bookly_app/Features/Home/Presentation/Widgets/MostRevelentItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MostRelevantBooks extends StatelessWidget {
  const MostRelevantBooks({super.key});
  void _handleOnClick() {}
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MostReleventCubit, MostReleventCubitState>(
      builder: (BuildContext context, MostReleventCubitState state) {
        if (state is MostReleventFealure) {
          return ErrorMessageWidget(message: state.errMessage);
        }
        return ListView.builder(
        shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(),
          itemCount: state is MostReleventSucces ? state.books.length : 4,
          itemBuilder: (context, index) {
            return MostRevelentItem(
              bookmodel: state is MostReleventSucces
                  ? state.books[index]
                  : Item(),
              isLoading: state is MostReleventLoading,
              onClick: state is MostReleventSucces ? _handleOnClick : null,
            );
          },
        );
      },
    );
  }
}
