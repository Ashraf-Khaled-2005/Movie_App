import 'package:flutter/material.dart';
import 'package:movie_app/features/auth/presentation/widget/login_body.dart';

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
