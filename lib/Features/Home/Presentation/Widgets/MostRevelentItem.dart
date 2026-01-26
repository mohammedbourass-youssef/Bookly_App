import 'package:bookly_app/Core/Utils/Widgets/RatingWidget.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model/item.dart';
import 'package:bookly_app/Features/Home/Presentation/Widgets/CustomBookItemListView.dart';
import 'package:flutter/material.dart';
import 'package:redacted/redacted.dart';

class MostRevelentItem extends StatelessWidget {
  const MostRevelentItem({
    super.key,
    required this.bookmodel,
    required this.onClick,
     required this.isLoading,
  });
  final VoidCallback? onClick;
  final Item bookmodel;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.20,
        child: Row(
          children: [
            CustomBookItemListView(isLoading: isLoading, bookmdel: bookmodel),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                     bookmodel.volumeInfo?.title ?? 'Invalid Title',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                     bookmodel.volumeInfo?.authors?[0] ?? 'Unknown Author',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
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
                        peopleCount: '0',
                        ratingValue: '0',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ).redacted(
              context: context,
              redact: isLoading,
              configuration: RedactedConfiguration(
                animationDuration: const Duration(milliseconds: 800), //default
              ),
      ),
    );
  }
}
