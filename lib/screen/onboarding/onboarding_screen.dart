import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD
import 'package:movieapp/screen/signup/signup_screen.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_dimens.dart';
import 'package:movieapp/utils/app_images.dart';
import 'package:movieapp/utils/app_txt.dart';
import 'package:movieapp/utils/signup_button.dart';
=======
import 'package:moviepp/utils/app_colors.dart';
import 'package:moviepp/utils/app_dimens.dart';
import 'package:moviepp/utils/app_images.dart';
import 'package:moviepp/utils/app_txt.dart';
>>>>>>> 094d87a77cd6cb9936b20aea503b2a4fcb37b9d0

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
<<<<<<< HEAD
=======
                    
>>>>>>> 094d87a77cd6cb9936b20aea503b2a4fcb37b9d0
                    AppTxt.onboardingTitle,
                    style: GoogleFonts.inter(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
<<<<<<< HEAD
                  // SizedBox.fromSize(size: const Size(0, 10)),
                  Text(
                    AppTxt.onboardingDesc,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                  // SizedBox.fromSize(size: const Size(0, 20)),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8, right: 24, bottom: 8, left: 24),
                    child: SignupButton(
                      text: AppTxt.onboardingBtn,
                      color: Colors.red,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnboardingScreen(),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox.fromSize(size: const Size(0, 10)),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8, right: 24, bottom: 8, left: 24),
                    child: SignupButton(
                      text: AppTxt.onboardingSignUp,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      ),
                    ),
                  ),
=======
>>>>>>> 094d87a77cd6cb9936b20aea503b2a4fcb37b9d0
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
<<<<<<< HEAD
      AppImages.onboarding,
=======
      AppImages.onboardingBg,
>>>>>>> 094d87a77cd6cb9936b20aea503b2a4fcb37b9d0
      fit: BoxFit.cover,
      width: size.width,
    );
  }
}
