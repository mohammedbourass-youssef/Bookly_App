import 'package:bookly_app/Features/Home/Presentation/Widgets/FeaturedListView.dart';
import 'package:flutter/material.dart';

class Similarlistview extends StatelessWidget {
  const Similarlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: FeaturedListView(),
    );
  }
}
