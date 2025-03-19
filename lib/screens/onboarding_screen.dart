import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviepp/screens/login_screen.dart';
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
              padding: EdgeInsets.only(top: 29, right: 19, left: 19),
              width: size.width,
              height: AppDimens.onboardingHeight,
              decoration: BoxDecoration(
                color: AppColors.onboardingColor,
                borderRadius: BorderRadius.only(
                  topLeft: _buildBorderRadiusCircular(
                    AppDimens.onboardingRadius,
                  ),
                  topRight: _buildBorderRadiusCircular(
                    AppDimens.onboardingRadius,
                  ),
                ),
              ),
              child: Column(
                children: [
                  // Text
                  Text(
                    textAlign: TextAlign.center,
                    AppTxt.onboardingTitle,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 19,
                      color: AppColors.onboardingTextColor,
                    ),
                  ),
                  SizedBox.fromSize(size: Size(0, 10)),
                  Text(
                    textAlign: TextAlign.center,
                    AppTxt.onboardingSubtitle,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: AppColors.onboardingTextColor,
                    ),
                  ),

                  SizedBox.fromSize(size: Size(0, 20)),

                  // Buttons
                  _buildOnboardingButton(
                    text: AppTxt.onboardingLoginText,
                    buttonColor: AppColors.buttonColor1,
                    textColor: AppColors.buttonTextColor1,
                    borderColor: Colors.transparent,
                    borderWidth: 0,
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        ),
                  ),
                  SizedBox.fromSize(size: Size(0, 20)),
                  _buildOnboardingButton(
                    text: AppTxt.onboardingSignUpText,
                    buttonColor: AppColors.buttonColor2,
                    textColor: AppColors.buttonTextColor2,
                    borderColor: AppColors.buttonBorderColor2,
                    borderWidth: 1,
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
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

  Radius _buildBorderRadiusCircular(double radius) => Radius.circular(radius);

  Image _buildBgImage(Size size) {
    return Image.asset(
      AppImages.onboardingBg,
      fit: BoxFit.cover,
      width: size.width,
    );
  }

  GestureDetector _buildOnboardingButton({
    required String text,
    required Color buttonColor,
    required Color textColor,
    required Color borderColor,
    required double borderWidth,
    required void Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 328,
        height: 52,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: borderColor, width: borderWidth),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
              color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
