import 'package:flutter/material.dart';
import 'package:islami/splash_screen.dart';

import 'home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contacts App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff111821),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: 'splashScreen',
      routes: {
        'splashScreen': (context) => SplashScreen(),
        'homeScreen': (context) => HomeScreen(),
      },
    );
  }
}
