import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/screen/onboarding/onboarding_screen.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_icons.dart';
import 'package:movieapp/utils/app_txt.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // Title
        Text(
          AppTxt.loginTitle,
          style: GoogleFonts.inter(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.titleColor),
        ),

        SizedBox.fromSize(
          size: Size(0, 30),
        ),

        // Container
        Container(
          width: 360,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 29),
          child: Column(children: [
            _buildTextFormField(
                hintText: AppTxt.loginHintTextField1,
                prefixIcon: AppIcons.prefixIcon1),
            SizedBox.fromSize(
              size: Size(0, 38),
            ),

            // Password
            _buildTextFormField(
                hintText: AppTxt.loginHintTextField2,
                prefixIcon: AppIcons.prefixIcon2,
                suffixIcon: AppIcons.suffixIcon,
                helperText: AppTxt.helperText),

            SizedBox.fromSize(
              size: Size(0, 20),
            ),

            _buildOnboardingButton(
                text: AppTxt.onboardingLoginText,
                buttonColor: AppColors.buttonColor1,
                textColor: AppColors.buttonTextColor1,
                borderColor: Colors.transparent,
                borderWidth: 0,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OnboardingScreen()))),

            SizedBox.fromSize(
              size: Size(0, 20),
            ),

            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: AppTxt.loginRichText1,
                  style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.richTextColor1)),
              TextSpan(
                  text: AppTxt.loginRichText2,
                  style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.richTextColor2))
            ]))
          ]),
        )
      ])),
    );
  }

  GestureDetector _buildOnboardingButton(
      {required String text,
      required Color buttonColor,
      required Color textColor,
      required Color borderColor,
      required double borderWidth,
      required void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 328,
        height: 52,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: borderColor, width: borderWidth)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
                color: textColor, fontSize: 14, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }

  TextFormField _buildTextFormField(
      {required String hintText,
      required Icon prefixIcon,
      Icon? suffixIcon,
      String? helperText}) {
    return TextFormField(
      style: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
      ),
      cursorColor: AppColors.cursorColor,
      cursorHeight: 14,
      cursorWidth: 1,
      decoration: InputDecoration(
        labelText: hintText,
        labelStyle: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.textColor,
        ),
        helperText: helperText,
        helperStyle: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.helperTextColor),
        prefixIcon: prefixIcon,
        prefixIconColor: AppColors.prefixIconColor,
        suffixIcon: suffixIcon,
        suffixIconColor: AppColors.suffixIconColor,
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: AppColors.disabledBorderColor, width: 1),
          borderRadius: BorderRadius.circular(2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor, width: 1),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }
}
