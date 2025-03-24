import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/pages/home_pages.dart';
import 'package:movieapp/screen/signup/signup_screen.dart';
import 'package:movieapp/utils/app_button.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_dimens.dart';
import 'package:movieapp/utils/app_images.dart';
import 'package:movieapp/utils/app_txt.dart';
import 'package:movieapp/utils/signup_button.dart';

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
                    child: AppButton(
                      text: AppTxt.onboardingBtn,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePages(),
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
      AppImages.onboarding,
      fit: BoxFit.cover,
      width: size.width,
    );
  }
}
