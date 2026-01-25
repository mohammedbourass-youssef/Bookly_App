import 'package:bookly_app/Core/Navigation/AppRouter.dart';
import 'package:bookly_app/Features/Home/Presentation/Widgets/CustomBookItemListView.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CustomBookItemListView(
          onTap: () {
            Approuter.goTo(context, Approuter.kBookDetailsPageURL);
          },
        );
      },
      itemCount: 10,
    );
  }
}
