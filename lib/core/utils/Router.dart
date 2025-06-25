import 'package:go_router/go_router.dart';
import 'package:movie_app/features/auth/presentation/view/login_view.dart';
import 'package:movie_app/features/auth/presentation/view/signup_view.dart';
import 'package:movie_app/features/splash/presentation/views/onboarding_view.dart';
import 'package:movie_app/features/splash/presentation/views/splash_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoute.splash.path,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: AppRoute.onboarding.path,
      builder: (context, state) =>
          const OnboardingView(), // Replace with your actual home view
    ),
    GoRoute(
      path: AppRoute.signup.path,
      builder: (context, state) =>
          const SignupView(), // Replace with your actual home view
    ),
    GoRoute(
      path: AppRoute.login.path,
      builder: (context, state) =>
          const LoginView(), // Replace with your actual home view
    ),
    // Add other routes as needed
  ],
);

enum AppRoute {
  splash('/'),
  login('/login'),
  signup('/signup'),
  onboarding('/onboarding'),
  home('/home');

  final String path;
  const AppRoute(this.path);
}
