import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  static const Color darkBg = Color(0xFF111821);
  static const Color goldColor = Color(0xFFD4AF37);

  void _onDone() {
    Navigator.pushReplacementNamed(context, 'homeScreen');
  }

  static const PageDecoration _pageDecoration = PageDecoration(bodyPadding: EdgeInsets.only(top: 160), pageColor: Color(0xFF111821));

  Widget _buildPage({required String imagePath, required String title, String? subtitle, double titleSize = 24, FontWeight titleWeight = FontWeight.bold, double topSpace = 70}) {
    return Column(
      children: [
        Image.asset(imagePath, width: 300, height: 250),
        SizedBox(height: topSpace),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: titleSize, fontWeight: titleWeight, color: goldColor),
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 10),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: goldColor),
          ),
        ],
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showSkipButton: false,
      showBackButton: true,
      back: Text(
        "Back",
        style: TextStyle(color: goldColor, fontWeight: FontWeight.bold),
      ),
      globalBackgroundColor: darkBg,
      globalHeader: Padding(padding: const EdgeInsets.only(top: 40, bottom: 40), child: Image.asset('assets/images/onboarding/header.png', width: 290, height: 150)),
      pages: [
        // ---- Onboarding 1
        PageViewModel(
          title: "",
          bodyWidget: _buildPage(imagePath: 'assets/images/onboarding/onboarding1.png', title: "Welcome To Islami App"),
          decoration: _pageDecoration,
        ),
        // ---- Onboarding 2
        PageViewModel(
          title: "",
          bodyWidget: _buildPage(imagePath: 'assets/images/onboarding/onboarding2.png', title: "Welcome To Islami", subtitle: "We Are Very Excited To Have You In Our Community", titleWeight: FontWeight.w400, topSpace: 30),
          decoration: _pageDecoration,
        ),
        // ---- Onboarding 3
        PageViewModel(
          title: "",
          bodyWidget: _buildPage(imagePath: 'assets/images/onboarding/onboarding3.png', title: "Reading the Quran", subtitle: "Read, and your Lord is the Most Generous"),
          decoration: _pageDecoration,
        ),
        // ---- Onboarding 4
        PageViewModel(
          title: "",
          bodyWidget: _buildPage(imagePath: 'assets/images/onboarding/onboarding4.png', title: "Bearish", subtitle: "Praise the name of your Lord, the Most High"),
          decoration: _pageDecoration,
        ),
        // ---- Onboarding 5
        PageViewModel(
          title: "",
          bodyWidget: _buildPage(imagePath: 'assets/images/onboarding/onboarding5.png', title: "Holy Quran Radio", subtitle: "You can listen to the Holy Quran Radio through the application for free and easily"),
          decoration: _pageDecoration,
        ),
      ],
      onDone: _onDone,
      onSkip: _onDone,
      next: const Text(
        "Next",
        style: TextStyle(color: goldColor, fontWeight: FontWeight.bold),
      ),
      done: const Text(
        "Done",
        style: TextStyle(color: goldColor, fontWeight: FontWeight.bold),
      ),
      dotsDecorator: const DotsDecorator(
        color: Colors.white24,
        activeColor: goldColor,
        size: Size(8, 8),
        activeSize: Size(16, 8),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
    );
  }
}
