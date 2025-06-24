import 'package:flutter/material.dart';
import 'package:movie_app/core/widget/Textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: GmailStyleTextField(labelText: "eslam")),
    );
  }
}
