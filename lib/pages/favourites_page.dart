import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/pages/settings_page.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_images.dart';
import 'package:movieapp/utils/app_txt.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 17),
                child: Text(
                  AppTxt.favTitle,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700, fontSize: 18),
                ),
              ),
              _buildMovieTile(
                  imageAsset: AppImages.movie1,
                  movieDate: AppTxt.movieDate1,
                  movieName: AppTxt.movieName1),
              SizedBox.fromSize(size: Size(0, 10)),
              _buildMovieTile(
                  imageAsset: AppImages.movie2,
                  movieDate: AppTxt.movieDate2,
                  movieName: AppTxt.movieName2),

              //
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SettingsPage()));
                  },
                  child: Text("Settings Page"))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMovieTile(
      {required String imageAsset,
      required String movieName,
      required String movieDate}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Image.asset(imageAsset),
          SizedBox.fromSize(
            size: Size(10, 0),
          ),

          // Details
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      movieName,
                      style: GoogleFonts.inter(
                          color: Color.fromRGBO(243, 243, 243, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),

                    // Three dot
                    Icon(Icons.more_vert)
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(movieDate,
                        style: GoogleFonts.inter(
                            color: Color.fromRGBO(150, 150, 150, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                  ],
                ),

                // Downloaded Button
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(
                    width: 88,
                    height: 22,
                    decoration: BoxDecoration(
                        color: AppColors.containerColor,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color: AppColors.containerBorderColor, width: 1)),
                    child: Center(
                      child: Text(
                        AppTxt.favButtonTitle,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: AppColors.containerBorderColor,
                        ),
                      ),
                    ),
                  )
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
