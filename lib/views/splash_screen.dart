import 'package:flutter/material.dart';
import 'package:news_hive/views/introduction_screen.dart';
import 'package:news_hive/views/utils/helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IntroductionScreen()),
        );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: Center(child: Image.asset('assets/images/Group 9.png', width: 125,))
    );
  }
}