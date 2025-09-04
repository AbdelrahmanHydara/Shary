import 'package:flutter/material.dart';
import 'widgets/bottom_nav_bar.dart';
import 'widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreenBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}


