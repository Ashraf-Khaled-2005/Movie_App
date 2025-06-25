import 'package:flutter/material.dart';
import 'package:movie_app/core/const/App_Style.dart';
import 'package:movie_app/core/const/App_color.dart';
import 'package:movie_app/core/utils/assets.dart';
import 'package:movie_app/core/widget/Textfield.dart';
import 'package:movie_app/core/widget/botton.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Assets.assetsImages316662P9J1RJ1221,
          width: 121,
          height: 118,
        ),
        SizedBox(height: 70),
        GmailStyleTextField(
          icon: Assets.assetsImagesVector1,

          labelText: "Gmail",
          keyboardType: TextInputType.emailAddress,
          obscureText: false,
        ),
        SizedBox(height: 22),
        GmailStyleTextField(
          icon: Assets.assetsImagesIconIdentification,

          labelText: "Name",
          keyboardType: TextInputType.name,
          obscureText: true,
        ),
        SizedBox(height: 22),
        GmailStyleTextField(
          icon: Assets.assetsImagesVector2,

          labelText: "Password",
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
        ),
        SizedBox(height: 22),
        GmailStyleTextField(
          icon: Assets.assetsImagesVector2,

          labelText: " Confirm Password",
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
        ),

        SizedBox(height: 22),
        GmailStyleTextField(
          icon: Assets.assetsImagesVector,

          labelText: "phone",
          keyboardType: TextInputType.phone,
          obscureText: true,
        ),
        SizedBox(height: 22),

        CustomButtom(text: "Sign Up", onPressed: () {}),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account ? ",
              style: AppTextStyles.regular14.copyWith(color: Colors.white),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Login In ",
                style: AppTextStyles.regular14.copyWith(
                  color: AppColor.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
