import 'package:flutter/material.dart';
import 'package:movie_app/core/const/App_color.dart';
import 'package:movie_app/core/utils/Router.dart';
import 'package:movie_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: AppColor.backgroundColor),
        routerConfig: router,
      ),
    );
  }
}
