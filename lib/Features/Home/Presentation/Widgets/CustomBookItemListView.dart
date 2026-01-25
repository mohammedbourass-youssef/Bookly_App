import 'package:bookly_app/Constants.dart';
import 'package:flutter/material.dart';

class CustomBookItemListView extends StatelessWidget {
  const CustomBookItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(Assets.tstImage),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
