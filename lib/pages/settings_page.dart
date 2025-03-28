import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/utils/app_icons.dart';
import 'package:movieapp/utils/app_images.dart';
import 'package:movieapp/utils/app_txt.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
                AppTxt.settingsTitle,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),

            // User
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                children: [
                  // Image
                  Image.asset(AppImages.appLogo),

                  SizedBox.fromSize(
                    size: Size(10, 0),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppTxt.userText1,
                        style: GoogleFonts.inter(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        AppTxt.userText2,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // Tiles

            _buildTile(
                title: AppTxt.settingsTitle1, icon: AppIcons.settingsIcon1),
            _buildTile(
                title: AppTxt.settingsTitle2, icon: AppIcons.settingsIcon2),
            _buildTile(
                title: AppTxt.settingsTitle3, icon: AppIcons.settingsIcon3),
            _buildTile(
                title: AppTxt.settingsTitle4, icon: AppIcons.settingsIcon4),
            _buildTile(
                title: AppTxt.settingsTitle5, icon: AppIcons.settingsIcon5),
            _buildTile(
                title: AppTxt.settingsTitle6, icon: AppIcons.settingsIcon6),
            _buildTile(
                title: AppTxt.settingsTitle7, icon: AppIcons.settingsIcon7),
          ],
        ),
      )),
    );
  }

  Padding _buildTile({required String title, required Icon icon}) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            icon,
            SizedBox.fromSize(
              size: Size(10, 0),
            ),
            Text(
              title,
              style:
                  GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600),
            )
          ],
        ));
  }
}
