import 'package:flutter/material.dart';
import 'package:shary/features/app_intro/onboarding/screens/onboarding_screen.dart';
import 'package:shary/features/app_intro/splash/screens/splash_screen.dart';
import 'package:shary/features/auth/login/screens/login_screen.dart';
import 'routes.dart';

class MyRouter {
  static Route? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch(settings.name)
    {
      case Routes.splashScreen :
        return MaterialPageRoute(
            builder: (_) => const SplashScreen()
        );
      case Routes.onBoardingScreen :
        return MaterialPageRoute(
            builder: (_) => const OnBoardingScreen()
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => const LoginScreen()
        );
    }
    return null;
  }
}