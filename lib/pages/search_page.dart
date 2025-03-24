import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/pages/favourites_page.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_icons.dart';
import 'package:movieapp/utils/app_txt.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
                  AppTxt.searchTitle,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700, fontSize: 18),
                ),
              ),

              SizedBox.fromSize(
                size: Size(0, 10),
              ),

              // TextField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  cursorColor: AppColors.cursorColor,
                  cursorWidth: 1,
                  decoration: InputDecoration(
                      hintText: AppTxt.searchHintText,
                      hintStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.signUpBtnText),
                      filled: true,
                      fillColor: AppColors.searchFillColor,
                      prefixIcon: AppIcons.searchPrefix,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28))),
                ),
              ),

              // Fav Page Nav
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FavouritesPage()));
                  },
                  child: Text("Fav Page"))
            ],
          ),
        ),
      ),
    );
  }
}
