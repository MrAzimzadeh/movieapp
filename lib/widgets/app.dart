import 'package:flutter/material.dart';
import 'package:movieapp/screen/onboarding/onboarding_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const  OnboardingScreen(),
    );
  }
}