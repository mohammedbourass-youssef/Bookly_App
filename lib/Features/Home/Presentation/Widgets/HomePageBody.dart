import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Features/Home/Presentation/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Homepagebody extends StatelessWidget {
  const Homepagebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(),
          Row(
            children: [
              CustomBookItemListView(),
              SizedBox(width: 10),
              CustomBookItemListView(),
              SizedBox(width: 10),
              CustomBookItemListView(),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomBookItemListView extends StatelessWidget {
  const CustomBookItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(Assets.tstImage),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
