import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_images.dart';
import 'package:movieapp/utils/app_txt.dart';
import 'package:intl/intl.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> favoriteMovies = [
      {
        'image': AppImages.moviePoster,
        'title': AppTxt.movieName,
        'year': formatDate()
      },
      {
        'image': AppImages.movie1,
        'title': AppTxt.movieName2,
        'year': formatDate()  
      },
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                AppTxt.favoritesTitle,
                style: GoogleFonts.inter(
                  color: AppColors.textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox.fromSize(
              size: Size(0, 20),
            ),
            Expanded(
                child: ListView.builder(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
              itemCount: favoriteMovies.length,
              itemBuilder: (context, index) {
                return _buildMovieRow(
                  favoriteMovies[index]['image']!,
                  favoriteMovies[index]['title']!,
                  favoriteMovies[index]['year']!,
                );
              },
            ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildMovieRow(String imagePath, String title, String year) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          imagePath,
          width: 60,
          fit: BoxFit.cover,
        ),
        SizedBox.fromSize(
          size: Size(10, 20),
        ),
        Expanded(
          child: Container(
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                      color: AppColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                // SizedBox.fromSize(size: Size(0, 20),),
                Text(
                  year,
                  style: GoogleFonts.inter(
                    color: AppColors.movieText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ),
        Column(
          children: [
            Icon(Icons.more_vert, color: AppColors.textColor),
            SizedBox.fromSize(
              size: Size(0, 4),
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              decoration: BoxDecoration(
                color: AppColors.downloadBackground,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                AppTxt.downloadText,
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.downloadColor,
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

String formatDate() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd').format(now);
  return formattedDate;
}
