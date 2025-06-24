import 'package:flutter/material.dart';
import 'package:movie_app/features/splash/presentation/views/widget/onboaringitem.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        return const OnBoardingItem(
          b_text1: "Explore Now",
          ishad: false,
          ftext: "Find Your Next \n Favourite Movie Here",
          stext:
              "Get access to a huge library of movies to suit all tastes. You will surely like it.",
        );
      },
      itemCount: 5,
    );
  }
}
