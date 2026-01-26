import 'package:bookly_app/Core/Navigation/AppRouter.dart';
import 'package:bookly_app/Core/Utils/Helper/ErrorMessageWidget.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/item.dart';
import 'package:bookly_app/Features/Home/Cubit/FeatureBooks%20cubit/feature_book_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Widgets/CustomBookItemListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});
  @override
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBookCubit, FeatureBookState>(
      builder: (context, state) {
        if (state is FeatureBookFailure) {
          return ErrorMessageWidget(message: state.errMessage);
        }
        return ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          
          itemCount: state is FeatureBookSuccess
              ? state.books.items!.length
              : 6,
          itemBuilder: (context, index) {
            return CustomBookItemListView(
              bookmdel: state is FeatureBookSuccess ? state.books.items![index] : Item(),
              isLoading: state is FeatureBookLoading,
              onTap: state is FeatureBookLoading ? null :  () {
                Approuter.goTo(context, Approuter.kBookDetailsPageURL);
              },
            );
          },
        );
      },
    );
  }
}
