import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Core/Navigation/AppRouter.dart';
import 'package:bookly_app/Core/Utils/Helper/HttpHelper.dart';
import 'package:bookly_app/Features/Home/Data/Services/BookServiceImpl.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubjectBloc(),
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

// 2. Register them at app startup

void configureDependencies() {
  getIt.registerSingleton<Httphelper>(Httphelper());
  getIt.registerSingleton<Bookserviceimpl>(Bookserviceimpl());
}
