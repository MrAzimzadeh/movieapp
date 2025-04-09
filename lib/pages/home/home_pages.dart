import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/model/film/film.dart';
import 'package:movieapp/pages/home/widget/movies_widget.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_images.dart';
import 'package:movieapp/utils/app_txt.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHomeImage(size),
            Padding(
              padding: const EdgeInsets.only(
                top: 29,
                left: 19,
                right: 19,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppTxt.movieTitle,
                    style: GoogleFonts.inter(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox.fromSize(
                    size: Size(0, 20),
                  ),
                  MoviesWidget(),
                  SizedBox.fromSize(
                    size: Size(0, 20),
                  ),
                  Text(
                    AppTxt.movieSubTitle, 
                    style: GoogleFonts.inter(
                      color: AppColors.textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  MoviesWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHomeImage(Size size) {
    return Image.asset(
      AppImages.homePage,
      fit: BoxFit.cover,
      width: size.width,
    );
  }
}
