import 'package:bookly_app/Features/Home/Presentation/Views/HomePage_View.dart';
import 'package:bookly_app/Features/SplashView/Presentation/Views/Splash_view.dart';
import 'package:go_router/go_router.dart';

class Approuter {
  static const String kHomePageURL = '/HomePage';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomePageURL, builder: (context, state) => HomepageView()),
    ],
  );
}
