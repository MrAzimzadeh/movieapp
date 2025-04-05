import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
  late Future<List<Film>>? films;
  final List<String> movieImages = [
    AppImages.movie1,
    AppImages.movie2,
    AppImages.movie3
  ];

  /// Request Logic
  Future<List<Film>> getHttp() async {
    try {
      final response = await dio.get('https://freetestapi.com/api/v1/movies');
      // from Molder
      List<Film> result =
          (response.data as List).map((e) => Film.fromMap(e)).toList();

      return result;
    } catch (e) {
      throw Exception('Server Error');
    }
  }

  @override
  void initState() {
    super.initState();
    print('initState');
    films = getHttp();
    print('initState Finishh');
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

                  /// Future Builder
                  FutureBuilder<List<Film>>(
                      future: films,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: CircularProgressIndicator.adaptive(
                                    backgroundColor: Colors.amber,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.red,
                                    ),
                                  )));
                        } else if (snapshot.hasError) {
                          Fluttertoast.showToast(
                            msg: 'Server Error',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                          return Center(
                            child: Text(
                              '${snapshot.error}',
                              style: TextStyle(color: Colors.red),
                            ),
                          );
                        } else if (snapshot.connectionState ==
                            ConnectionState.done) {
                          return _buildMovieList(snapshot.data!);
                        } else {
                          return SizedBox.shrink();
                        }
                      }),

                  ///
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
                  // _buildMovieList(films),
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

  Widget _buildMovieList(List<Film> films) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: films.length,
        itemBuilder: (context, index) {
          var data = films[index];
          return Padding(
            padding:
                const EdgeInsets.only(top: 12, left: 5, right: 5, bottom: 18),
            child: Image.network(
              data.photoUrl,
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
