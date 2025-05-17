import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';  
import 'package:news_hive/views/utils/helper.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  List<Map<String, dynamic>> pageList = [
    {
      'imageAssets': 'assets/images/img intro 1.png',
      'title': 'The World at Your Fingertips',
      'subtitle':
          'Get 24/7 updates on global news – from breaking politics to cultural trends, all in one place',
    },
    {
      'imageAssets': 'assets/images/img intro 2.png',
      'title': 'Tailored to Your Curiosity',
      'subtitle':
          'Select your interests and receive handpicked stories. Technology, sports, or entertainment – we’ve got you covered',
    },
    {
      'imageAssets': 'assets/images/img intro 1.png',
      'title': 'Trusted Updates in Real-Time',
      'subtitle':
          'Instant alerts for breaking news, rigorously fact-checked by our editors before they reach you',
    },
  ];

  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: pageList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100),
                      Image.asset(pageList[index]['imageAssets'], height: 300),
                      vsLarge,
                      Text(
                        pageList[index]['title'],
                        style: headline3.copyWith(
                          color: cPrimary,
                          fontWeight: bold,
                        ),
                      ),
                      vsSmall,
                      Text(pageList[index]['subtitle'], style: subtitle1),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}