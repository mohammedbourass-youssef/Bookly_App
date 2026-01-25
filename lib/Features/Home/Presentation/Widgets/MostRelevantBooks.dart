
import 'package:bookly_app/Features/Home/Presentation/Widgets/MostRevelentItem.dart';
import 'package:flutter/material.dart';

class MostRelevantBooks extends StatelessWidget {
  const MostRelevantBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return MostRevelentItem();
      },
    );
  }
}