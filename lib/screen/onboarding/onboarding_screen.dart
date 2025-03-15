import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviepp/utils/app_colors.dart';
import 'package:moviepp/utils/app_dimens.dart';
import 'package:moviepp/utils/app_images.dart';
import 'package:moviepp/utils/app_txt.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          _buildBgImage(size),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(
                top: 29,
                left: 19,
                right: 19,
                bottom: 59,
              ),
              width: size.width,
              height: AppDimens.onboardingHeight,
              decoration: BoxDecoration(
                color: AppColors.onboardingColor,
                borderRadius: BorderRadius.only(
                  topLeft: _buildBorderRadiusCirular(
                    AppDimens.onboardingRadius,
                  ),
                  topRight: _buildBorderRadiusCirular(
                    AppDimens.onboardingRadius,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    
                    AppTxt.onboardingTitle,
                    style: GoogleFonts.inter(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Radius _buildBorderRadiusCirular(double radius) => Radius.circular(radius);

  Widget _buildBgImage(Size size) {
    return Image.asset(
      AppImages.onboardingBg,
      fit: BoxFit.cover,
      width: size.width,
    );
  }
}
