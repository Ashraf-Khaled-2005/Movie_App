import 'package:flutter/material.dart';
import 'package:movie_app/core/const/App_Style.dart';
import 'package:movie_app/core/const/App_color.dart';

class CustomBoardedButtom extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomBoardedButtom({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.sizeOf(context).width, 60),
        backgroundColor: AppColor.backgroundColor,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(color: AppColor.primaryColor),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyles.semiBold20.copyWith(color: AppColor.primaryColor),
      ),
    );
  }
}
