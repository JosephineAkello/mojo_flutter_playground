import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_flutter/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadSplash();
  }

// Load the splash screen for some duration
  Future<Timer> loadSplash() async {
    return Timer(
      const Duration(seconds: 3),
      onDoneLoading,
    );
  }

  onDoneLoading() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: ((context) => const HomeScreenPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // Lottie anim from asset file
      child: Lottie.asset(
        "assets/animations/loginAnim.json",
        // Can add other properties on how you would like the anim to display
        fit: BoxFit.cover,
        width: 300,
        height: 300,
      ),
      // Un-comment this out to try out
      // Adding a Lottie animation via Network URL
      // child: Lottie.network(
      //   "https://lottie.host/bf81e742-c5ab-4a9d-82b3-826d17556baa/U5Qsu9gaZM.json",
      //   fit: BoxFit.cover,
      //   width: 300,
      //   height: 300,
      // ),
    );
  }
}
