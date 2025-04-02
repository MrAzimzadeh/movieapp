import 'package:flutter/material.dart';
import 'package:movieapp/screen/onboarding/onboarding_screen.dart';
import 'package:movieapp/ui/main_wrapper.dart';
import 'package:movieapp/utils/app_txt.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTxt.appName,
      darkTheme: ThemeData(),
      themeMode: ThemeMode.dark,
      home: MainWrapper(),
    );
  }
}
