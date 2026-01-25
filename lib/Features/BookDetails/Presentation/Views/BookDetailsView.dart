import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Features/BookDetails/Presentation/Widgets/BookDetailsBody.dart';
import 'package:flutter/material.dart';

class Bookdetailsview extends StatelessWidget {
  const Bookdetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.shopping_cart_outlined, color: Colors.white),
          ),
        ],
      ),
      body : Bookdetailsbody(),
    );
  }
}
