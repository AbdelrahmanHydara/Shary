import 'package:flutter/material.dart';
import 'package:shary/features/app_intro/onboarding/screens/onboarding_screen.dart';
import 'package:shary/features/app_intro/splash/screens/splash_screen.dart';
import 'package:shary/features/auth/login/screens/login_screen.dart';
import 'package:shary/features/auth/register/screens/register_screen.dart';
import 'package:shary/features/auth/start_auth/screens/start_auth_screen.dart';
import 'package:shary/features/home/screens/home_screen.dart';
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
      case Routes.startAuthScreen:
        return MaterialPageRoute(
            builder: (_) => const StartAuthScreen()
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => const LoginScreen()
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => const RegisterScreen()
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen()
        );
    }
    return null;
  }
}