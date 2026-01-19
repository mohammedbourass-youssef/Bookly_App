import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Features/SplashView/Presentation/Views/Splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      color: kPrimaryColor,
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
