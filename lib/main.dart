import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Core/Navigation/AppRouter.dart';
import 'package:bookly_app/Core/Utils/Helper/HttpHelper.dart';
import 'package:bookly_app/Features/Home/Cubit/Most%20Relevent/most_relevent_cubit_cubit.dart';
import 'package:bookly_app/Features/Home/Data/Services/BookServiceImpl.dart';
import 'package:bookly_app/Features/Home/Cubit/FeatureBooks%20cubit/feature_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  configureDependencies();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeatureBookCubit(bookserviceimpl: getIt.get<Bookserviceimpl>())
                ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              MostReleventCubit(bookserviceimpl:  getIt.get<Bookserviceimpl>())
                ..fetchData(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: Approuter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        color: kPrimaryColor,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

void configureDependencies() {
  getIt.registerSingleton<Httphelper>(Httphelper());
  getIt.registerSingleton<Bookserviceimpl>(
    Bookserviceimpl(getIt.get<Httphelper>()),
  );
}
