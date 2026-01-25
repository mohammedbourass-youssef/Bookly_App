import 'package:bookly_app/Features/Home/Presentation/Widgets/CustomAppBar.dart';
import 'package:bookly_app/Features/Home/Presentation/Widgets/CustomBookItemListView.dart';
import 'package:flutter/material.dart';

class Homepagebody extends StatelessWidget {
  const Homepagebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          const SizedBox(height: 15),
          Expanded(child: FeaturedListView()),
        ],
      ),
    );
  }
}

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomBookItemListView();
        },
        itemCount: 10,
      ),
    );
  }
}
