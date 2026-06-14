import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

  // your init code here (Firebase, etc.)

  FlutterNativeSplash.remove(); // <-- this is what moves you to home
  runApp(MyApp());
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
      initialRoute: 'homeScreen',
      routes: {
        'homeScreen': (context) => HomeScreen(),
      },
    );
  }
}
