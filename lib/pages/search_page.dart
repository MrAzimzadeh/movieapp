import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_txt.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
        left: 40,
        top: 10,
      ),
      child: SafeArea(
        child: SizedBox(
            width: 320,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppTxt.searchTitle,
                    textAlign: TextAlign.center,
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
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.searchBarBg,
                      prefixIcon: Icon(
                        Icons.menu,
                        color: AppColors.searchColor,
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        color: AppColors.searchColor,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: AppColors.searchBarBg)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.searchBarBg,
                        ),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.searchBarBg,
                        ),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      hintText: 'Search for a title...',
                      hintStyle: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.searchColor,
                      )),
                ),
              ],
            )),
      ),
    ));
  }
}
