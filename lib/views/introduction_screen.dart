import 'package:flutter/material.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  void initState() {
      Future.delayed(Duration(seconds: 2), () {
        
      });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}