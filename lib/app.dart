import 'package:flutter/material.dart';
import 'package:moviepp/screen/onboarding/onboarding_screen.dart';
import 'package:moviepp/utils/app_txt.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTxt.appName,
      darkTheme: ThemeData(),
      themeMode: ThemeMode.dark,
      home: OnboardingScreen(),
    );
  }
}
