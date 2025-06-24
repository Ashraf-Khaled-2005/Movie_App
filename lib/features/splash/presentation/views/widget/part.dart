import 'package:flutter/material.dart';
import 'package:movie_app/core/const/App_Style.dart';
import 'package:movie_app/core/widget/boarded_buttom.dart';
import 'package:movie_app/core/widget/botton.dart';

class Custom_part_onBoarding extends StatelessWidget {
  final String b_text1, b_text2;
  final String ftext, stext;
  const Custom_part_onBoarding({
    super.key,
    required this.ishad,
    required this.ftext,
    this.stext = '',
    required this.b_text1,
    this.b_text2 = '',
  });

  final bool ishad;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(34),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.center,
              ftext,
              style: AppTextStyles.medium36.copyWith(color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              stext,
              style: AppTextStyles.bold24.copyWith(
                color: Colors.white.withAlpha(125),
              ),
            ),
            SizedBox(height: 10),
            CustomButtom(
              text: "Explore Now",
              onPressed: () {
                // Navigate to the next screen or perform an action
              },
            ),
            SizedBox(height: 20),
            ishad
                ? CustomBoardedButtom(
                    text: "Explore Now",
                    onPressed: () {
                      // Navigate to the next screen or perform an action
                    },
                  )
                : SizedBox(width: 0.0, height: 0.0),
          ],
        ),
      ),
    );
  }
}
