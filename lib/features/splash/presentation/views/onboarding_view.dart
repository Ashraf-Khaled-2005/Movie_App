import 'package:flutter/material.dart';
import 'package:movie_app/features/splash/presentation/views/widget/onboarding_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnboardingBody());
  }
}
