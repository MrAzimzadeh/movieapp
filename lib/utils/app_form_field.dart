import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/utils/app_colors.dart';

class SignupFormField extends StatelessWidget {
  const SignupFormField({
    super.key,
    this.prefixIcon,
    required this.hintText,
    this.labelText,
  });

  final Widget? prefixIcon;
  final String hintText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 328,
      height: 52,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: GoogleFonts.roboto(
            color: AppColors.textfieldSide,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(
            color: AppColors.emailText,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: prefixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(  1), 
            borderSide: const BorderSide(
              color: AppColors.textfieldSide,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1),
            borderSide: const BorderSide(
              color: AppColors.textfieldSide,
            ),
          ),
        ),
        style: GoogleFonts.roboto(
          color: AppColors.emailText,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}