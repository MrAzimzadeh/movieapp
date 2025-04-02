import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/model/film/film.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_images.dart';
import 'package:movieapp/utils/app_txt.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final dio = Dio();

  /// Request Logic
  void getHttp() async {
    final response = await dio.get('https://freetestapi.com/api/v1/movies');
    // from Molder
    final data = Film.fromMap(response.data as List);
  }

  @override
  void initState() {
    super.initState();
    print('initState');
    getHttp();
    print('initState Finishh');
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final List<String> movieImages = [
      AppImages.movie1,
      AppImages.movie2,
      AppImages.movie3
    ];

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
                  _buildMovieList(movieImages),
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
                  _buildMovieList(movieImages),
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

  Widget _buildMovieList(List<String> movieImages) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movieImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(top: 12, left: 5, right: 5, bottom: 18),
            child: Image.asset(
              movieImages[index],
              width: 120,
              fit: BoxFit.cover,
              key: ValueKey(index),
            ),
          );
        },
      ),
    );
  }
}
