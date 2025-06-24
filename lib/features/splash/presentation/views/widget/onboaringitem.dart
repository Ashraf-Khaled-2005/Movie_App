import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/assets.dart';
import 'package:movie_app/features/splash/presentation/views/widget/part.dart';

class OnBoardingItem extends StatelessWidget {
  final void Function()? onPressed1, onPressed2;
  final String image;
  final String b_text1, b_text2;
  final String ftext, stext;

  final bool ishad;
  const OnBoardingItem({
    super.key,
    required this.ishad,
    required this.ftext,
    required this.b_text1,
    this.stext = '',
    this.b_text2 = '',
    required this.image,
    this.onPressed1,
    this.onPressed2,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(child: Image.asset(image, fit: BoxFit.cover)),
        Custom_part_onBoarding(
          onPressed1: onPressed1,
          onPressed2: onPressed2,

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
