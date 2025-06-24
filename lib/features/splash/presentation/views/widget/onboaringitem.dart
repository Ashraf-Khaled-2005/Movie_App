import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/assets.dart';
import 'package:movie_app/features/splash/presentation/views/widget/part.dart';

class OnBoardingItem extends StatelessWidget {
  final String b_text1, b_text2;
  final String ftext, stext;

  final bool ishad;
  const OnBoardingItem({
    super.key,
    required this.ishad,
    required this.ftext,
    this.stext = '',
    required this.b_text1,
    this.b_text2 = '',
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.asset(Assets.assetsImagesOnBoarding1, fit: BoxFit.cover),
        ),
        Custom_part_onBoarding(
          ishad: ishad,
          ftext: ftext,
          stext: stext,
          b_text1: b_text1,
          b_text2: b_text2,
        ),
      ],
    );
  }
}
