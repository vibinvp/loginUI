import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_task/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 151, 32, 23),
      body: Center(
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.white,
          child: Image.asset(
            "lib/assets/eayezy.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
