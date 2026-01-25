import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.ratingSize,
    required this.peopleCount,
    required this.ratingValue,
  });
  final String peopleCount;
  final double ratingSize;
  final String ratingValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.amber, size: ratingSize),
        SizedBox(width: 5),
        Text(
          ratingValue,
          style: TextStyle(
            fontSize: ratingSize,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 5),
        Text(
          '($peopleCount)',
          style: TextStyle(
            fontSize: ratingSize - 3,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
