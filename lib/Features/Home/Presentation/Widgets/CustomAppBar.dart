import 'package:bookly_app/Constants.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.onSearchPressed});
  final VoidCallback? onSearchPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(Assets.logo, height: 30, width: 100),
          IconButton(
            onPressed: onSearchPressed,
            icon: Icon(Icons.search_rounded, size: 28),
          ),
        ],
      ),
    );
  }
}