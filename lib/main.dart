import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Core/Navigation/AppRouter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Approuter.router,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      color: kPrimaryColor,
      debugShowCheckedModeBanner: false,
    );
  }
}
