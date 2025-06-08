import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:recipes_app_new/Features/home/presentation/views/home_view.dart';
import 'package:recipes_app_new/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static String id = 'splashPage';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 6), () {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => const HomeView(),
          transitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (
            _,
            Animation<double> animation,
            __,
            Widget child,
          ) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolor,
      body: Center(
        child: Lottie.asset(
          'assets/chef.json',
          width: 280, // adjust size
          repeat: true, // loop animation
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
