import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/const/App_Style.dart';
import 'package:movie_app/core/const/App_color.dart';
import 'package:movie_app/core/utils/Router.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.go(AppRoute.onboarding.path);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/images/316662-P9J1RJ-122 1.png")),
          Text(
            "Copyright © 2025 All rights reserved",
            style: AppTextStyles.regular16,
          ),
          Text(
            "Made with ❤️ by Eslam Khaled",
            style: AppTextStyles.regular16.copyWith(
              color: AppColor.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
