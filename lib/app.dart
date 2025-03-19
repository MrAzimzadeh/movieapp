import 'package:flutter/material.dart';
import 'package:moviepp/screens/onboarding_screen.dart';
import 'package:moviepp/utils/app_txt.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTxt.appName,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: OnboardingScreen(),
    );
  }
}
