import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/pages/home/widget/movies_widget.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_images.dart';
import 'package:movieapp/utils/app_txt.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHomeImage(context),
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
                  MoviesWidget(
                    url: 'movies',
                  ),
                  MoviesWidget(
                    url: 'movies',
                  ),
                  MoviesWidget(
                    url: 'movies',
                  ),
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
                  MoviesWidget(
                    url: 'movies',
                    limit: 2,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHomeImage(BuildContext context) {
    return Image.asset(
      AppImages.homePage,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
    );
  }
}
