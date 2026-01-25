import 'package:bookly_app/Core/Utils/Widgets/RatingWidget.dart';
import 'package:bookly_app/Features/BookDetails/Presentation/Widgets/ActionsSection.dart';
import 'package:bookly_app/Features/Home/Presentation/Widgets/CustomBookItemListView.dart';
import 'package:flutter/material.dart';

class Bookdetailsbody extends StatelessWidget {
  const Bookdetailsbody({super.key});

  @override
  Widget build(BuildContext context) {
    // Center the item horizontally

    return Column(
      children: [
        Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: CustomBookItemListView(),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.625,
          child: Text(
            'harry potter and the goblet of fire ',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 10),
        Center(child: RatingWidget(ratingSize: 30 , peopleCount: '2000', ratingValue: '4.5')),
        ActionsSection(),
      ],
    );
  }
}
