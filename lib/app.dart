import 'package:flutter/material.dart';
import 'package:movieapp/pages/favourites_page.dart';
import 'package:movieapp/utils/app_txt.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTxt.appName,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: FavouritesPage(),
    );
  }
}
