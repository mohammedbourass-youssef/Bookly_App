import 'package:bookly_app/Features/BookDetails/Presentation/Views/BookDetailsView.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/HomePage_View.dart';
import 'package:bookly_app/Features/SplashView/Presentation/Views/Splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Approuter {
  static const String kHomePageURL = '/HomePage';
  static const String kBookDetailsPageURL = '/BookDetailsPage';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomePageURL, builder: (context, state) => HomepageView()),
      GoRoute(
        path: kBookDetailsPageURL,
        builder: (context, state) => Bookdetailsview(),
      ),
    ],
  );

  static void goTo(BuildContext  context, String url) {
    {
      GoRouter.of(context).push(url);
    }
  }
}
