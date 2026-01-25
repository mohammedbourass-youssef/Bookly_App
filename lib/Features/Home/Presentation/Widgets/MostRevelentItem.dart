import 'package:bookly_app/Core/Utils/Widgets/RatingWidget.dart';
import 'package:bookly_app/Features/Home/Presentation/Widgets/CustomBookItemListView.dart';
import 'package:flutter/material.dart';

class MostRevelentItem extends StatelessWidget {
  const MostRevelentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        children: [
          CustomBookItemListView(),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  'Harry potter and the philosopher\'s stone',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Author Name',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 10),
              SizedBox(
                width:
                    MediaQuery.of(context).size.width *
                    0.7, // same as column width
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'FREE',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RatingWidget(
                      ratingSize: 18,
                      peopleCount: '3456',
                      ratingValue: '4.8',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
