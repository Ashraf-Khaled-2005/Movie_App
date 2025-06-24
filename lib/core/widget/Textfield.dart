import 'package:flutter/material.dart';
import 'package:movie_app/core/const/App_Style.dart';
import 'package:movie_app/core/utils/assets.dart';

class GmailStyleTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final String? errorText;

  const GmailStyleTextField({
    super.key,
    required this.labelText,
    this.obscureText = false,
    this.controller,
    this.onChanged,
    this.keyboardType,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      style: AppTextStyles.regular16.copyWith(
        color: Colors.white,
      ), // Text color

      decoration: InputDecoration(
        fillColor: Color(0xff282A28),
        filled: true,
        labelStyle: AppTextStyles.regular16.copyWith(color: Colors.white),
        prefix: Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Image.asset(Assets.assetsImagesVector1, width: 20, height: 15),
        ),
        labelText: labelText,
        errorText: errorText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 19,
          vertical: 16,
        ),
      ),
    );
  }
}
