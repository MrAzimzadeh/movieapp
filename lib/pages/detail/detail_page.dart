import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/model/film/film.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_images.dart';

class MovieDetailPage extends StatelessWidget {
  MovieDetailPage({super.key, required this.filmId});
  final int filmId;

  Future<Film>? film;

  Future<Film> getFilmById() async {
    final dio = Dio();
    final response =
        await dio.get('https://freetestapi.com/api/v1/movies/$filmId');

    print(response.data);
    return Film.fromMap(response.data);
  }

  @override
  Widget build(BuildContext context) {
    film = getFilmById();

    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<Film>(
            future: film,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.amber,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.red,
                      ),
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(
                    'Server Error',
                    style: GoogleFonts.inter(
                      color: AppColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                return SingleChildScrollView(
                  child: Align(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //  _buildHomeImage(size),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 75,
                            top: 17,
                            bottom: 17,
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_back,
                                    color: AppColors.inputField),
                                onPressed: () => Navigator.pop(context),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                snapshot.data?.title ?? 'Film',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  NetworkImage(snapshot.data?.photoUrl ?? ''),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${snapshot.data?.title}',
                                style: GoogleFonts.inter(
                                  color: AppColors.textColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '2022 | 18+ | 1 Season | K-Drama',
                                style: GoogleFonts.inter(
                                  color: AppColors.movieText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                '${snapshot.data?.description}',
                                style: GoogleFonts.inter(
                                  color: AppColors.textColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Starring : Song Hye-kyo, Lee Do-hyun, Lim Ji-yeon',
                                style: GoogleFonts.inter(
                                  color: AppColors.textColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Creators : Kim Eun-sook, An Gil-ho',
                                style: GoogleFonts.inter(
                                  color: AppColors.textColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Genre : ${snapshot.data?.genre.join(', ')}',
                                style: GoogleFonts.inter(
                                  color: AppColors.textColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'Episodes',
                                style: GoogleFonts.inter(
                                  color: AppColors.textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Season 1',
                                style: GoogleFonts.inter(
                                  color: AppColors.textColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 10),
                              _buildEpisodeCard(
                                imagePath: AppImages.episode,
                                title: 'Episode 1',
                                duration: '47m',
                                description:
                                    'Tormented by her high school classmates and with nowhere...',
                              ),
                              _buildEpisodeCard(
                                imagePath: AppImages.episode,
                                title: 'Episode 2',
                                duration: '52m',
                                description:
                                    'With Park Yeon-jin\'s wedding on...',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Center(
                  child: Text(
                    'No Data',
                    style: GoogleFonts.inter(
                      color: AppColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              }
            }),
      ),
    );
  }

  Widget _buildEpisodeCard({
    required String imagePath,
    required String title,
    required String duration,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: GoogleFonts.inter(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      duration,
                      style: GoogleFonts.inter(
                        color: AppColors.movieText,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: GoogleFonts.inter(
                      color: AppColors.movieText,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

  // Widget _buildHomeImage(Size size) {
  //   return Image.asset(
  //     AppImages.posterBg,
  //     fit: BoxFit.cover,
  //     width: size.width,
  //   );
  // }