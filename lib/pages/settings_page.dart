import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_images.dart';
import 'package:movieapp/utils/app_txt.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                AppTxt.settingTitle,
                style: GoogleFonts.inter(
                  color: AppColors.textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(0, 20),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 15,
                      bottom: 15,
                    ),
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image:  DecorationImage(image: AssetImage(AppImages.moviePoster),fit: BoxFit.cover)
                      ),
                    )),
              )
            ],
          )
        ],
      )),
    );
  }
}

// Radius _buildBorderRadiusCirular(double radius) => Radius.circular(radius);
