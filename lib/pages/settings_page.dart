import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_images.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox.fromSize(size: Size(0, 20),),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImages.profileImg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              SizedBox.fromSize(size: Size(0, 20),),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10, top: 27.5
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Zeta',
                          style: GoogleFonts.inter(
                            color: AppColors.textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'example@gmail.com',
                          style: GoogleFonts.inter(
                            color: AppColors.movieText,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
               SizedBox.fromSize(size: Size(0, 30),),
              _buildMenuItem(Icons.person_outline, 'Account'),
              _buildMenuItem(Icons.lock_outline, 'Privacy'),
              _buildMenuItem(Icons.play_circle_outline, 'Appearance'),
              _buildMenuItem(Icons.notifications_outlined, 'Notifications'),
              _buildMenuItem(Icons.storage_outlined, 'Storage'),
              _buildMenuItem(Icons.accessibility_new_outlined, 'Accessibility'),
              _buildMenuItem(Icons.help_outline, 'Help'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors.inputField,
            size: 24,
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: GoogleFonts.inter(
              color: AppColors.inputField,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
