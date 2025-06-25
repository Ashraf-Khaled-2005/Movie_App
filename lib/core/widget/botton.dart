import 'package:flutter/material.dart';
import 'package:movie_app/core/const/App_Style.dart';
import 'package:movie_app/core/const/App_color.dart';
import 'package:movie_app/core/utils/assets.dart';

class CustomButtom extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButtom({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.sizeOf(context).width, 60),
        backgroundColor: AppColor.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyles.semiBold20.copyWith(color: Colors.black),
      ),
    );
  }
}

class LabledCustomButtom extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const LabledCustomButtom({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.sizeOf(context).width, 60),
        backgroundColor: AppColor.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.assetsImagesIconGoogle),
          SizedBox(width: 5),
          Text(
            text,
            style: AppTextStyles.semiBold20.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
