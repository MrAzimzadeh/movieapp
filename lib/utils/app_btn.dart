import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/utils/app_colors.dart';

class SignupField extends StatelessWidget {
  const SignupField({
    super.key,
    this.prefixIcon,
    this.sufficIcon,
    required this.hintText,
  });

  final Widget? prefixIcon;
  final String hintText;
  final Widget? sufficIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 328,
      height: 52,
      child: TextFormField(
        decoration: InputDecoration(
          labelStyle: GoogleFonts.roboto(
            color: AppColors.usernameField,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(
            color: AppColors.textColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: prefixIcon,
          suffixIcon: sufficIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(  1), 
            borderSide: const BorderSide(
              color: AppColors.usernameField,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1),
            borderSide: const BorderSide(
              color: AppColors.usernameField,
            ),
          ),
        ),
        style: GoogleFonts.roboto(
          color: AppColors.textColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}