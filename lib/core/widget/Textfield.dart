import 'package:flutter/material.dart';
import 'package:movie_app/core/const/App_Style.dart';
import 'package:movie_app/core/utils/assets.dart';

class GmailStyleTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final String icon;
  final void Function(String?)? onsaved;
  final TextInputType? keyboardType;

  const GmailStyleTextField({
    super.key,
    required this.labelText,
    this.obscureText = false,
    this.onsaved,
    this.keyboardType,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      obscureText: obscureText,
      style: AppTextStyles.regular16.copyWith(
        color: Colors.white,
      ), // Text color
      decoration: InputDecoration(
        fillColor: Color(0xff282A28),
        filled: true,
        hintStyle: AppTextStyles.regular16.copyWith(color: Colors.white),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Image.asset(icon, width: 15, height: 15, color: Colors.white),
        ),
        hintText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 19,
          vertical: 16,
        ),
      ),
    );
  }
}
