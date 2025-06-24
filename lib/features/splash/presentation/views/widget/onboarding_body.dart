import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/utils/Router.dart';
import 'package:movie_app/core/utils/assets.dart';
import 'package:movie_app/features/splash/presentation/views/widget/onboaringitem.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final List<Map<String, dynamic>> onboardingItems = [
    {
      'image': Assets.assetsImagesOnBoarding1,
      'ftext': "Find Your Next \nFavorite Movie Here",
      'stext': "Discover thousands of movies from all genres",
      'b_text1': "Get Started",
      'ishad': false,
    },
    {
      'image': Assets.assetsImagesBoarding2,
      'ftext': "Discover Movies",
      'stext':
          "Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.",
      'b_text1': "Next",
      'ishad': false,
    },
    {
      'image': Assets.assetsImagesBorad3,
      'ftext': "Explore All Genres",
      'stext':
          "Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.",
      'b_text1': "Next",

      'ishad': true,
    },
    {
      'image': Assets.assetsImagesBorad4,
      'ftext': "Create Your Watchlist",
      'stext':
          "Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres.",
      'b_text1': "Almost There",
      'ishad': true,
    },
    {
      'image': Assets.assetsImagesBorad5,
      'ftext': "Start Watching Now",
      'b_text1': "Finish",
      'ishad': true,
    },
  ];

  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      controller: _pageController,
      children: [
        OnBoardingItem(
          ishad: onboardingItems[0]['ishad'],
          ftext: onboardingItems[0]['ftext'],
          b_text1: onboardingItems[0]['b_text1'],
          stext: onboardingItems[0]['stext'],
          image: onboardingItems[0]['image'],
          onPressed1: () {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
        OnBoardingItem(
          ishad: onboardingItems[1]['ishad'],
          ftext: onboardingItems[1]['ftext'],
          b_text1: onboardingItems[1]['b_text1'],
          stext: onboardingItems[1]['stext'],
          image: onboardingItems[1]['image'],
          onPressed1: () {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
        OnBoardingItem(
          ishad: onboardingItems[2]['ishad'],
          ftext: onboardingItems[2]['ftext'],
          b_text1: onboardingItems[2]['b_text1'],
          stext: onboardingItems[2]['stext'],
          image: onboardingItems[2]['image'],
          b_text2: "Back",

          onPressed1: () {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
          onPressed2: () {
            _pageController.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
        OnBoardingItem(
          ishad: onboardingItems[3]['ishad'],
          ftext: onboardingItems[3]['ftext'],
          b_text1: onboardingItems[3]['b_text1'],
          stext: onboardingItems[3]['stext'],
          image: onboardingItems[3]['image'],
          b_text2: "Back",

          onPressed1: () {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
          onPressed2: () {
            _pageController.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
        OnBoardingItem(
          ishad: onboardingItems[4]['ishad'],
          ftext: onboardingItems[4]['ftext'],
          b_text1: onboardingItems[4]['b_text1'],
          image: onboardingItems[4]['image'],
          b_text2: "Back",
          onPressed1: () {
            // Navigate to the next screen or perform an action
            context.go(AppRoute.login.path);
          },
          onPressed2: () {
            _pageController.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
      ],
    );
  }
}
