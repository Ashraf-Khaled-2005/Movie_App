import 'package:flutter/material.dart';
import 'package:movie_app/core/const/App_Style.dart';
import 'package:movie_app/core/const/App_color.dart';
import 'package:movie_app/core/utils/assets.dart';
import 'package:movie_app/core/widget/Textfield.dart';
import 'package:movie_app/core/widget/botton.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Login_Body(),
      ),
    );
  }
}

class Login_Body extends StatelessWidget {
  const Login_Body({super.key});

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
          icon: Assets.assetsImagesVector2,

          labelText: "Password",
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Forget Password ? ",
              style: AppTextStyles.regular14.copyWith(
                color: AppColor.primaryColor,
              ),
            ),
          ),
        ),
        SizedBox(height: 33),
        CustomButtom(text: "Login", onPressed: () {}),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account ? ",
              style: AppTextStyles.regular14.copyWith(color: Colors.white),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Sign Up",
                style: AppTextStyles.regular14.copyWith(
                  color: AppColor.primaryColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          "--------------------- OR ----------------",
          style: TextStyle(color: AppColor.primaryColor),
        ),
        SizedBox(height: 20),
        LabledCustomButtom(text: "Login with Goolge", onPressed: () {}),
      ],
    );
  }
}
