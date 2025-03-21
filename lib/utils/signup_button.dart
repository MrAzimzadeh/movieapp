import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/utils/app_colors.dart';

class SignupButton extends StatelessWidget {
  SignupButton({super.key, required this.text, this.onPressed, this.color});
  void Function()? onPressed;
  String text;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: 329,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.signUpBtn,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.inter(
            color: color ?? AppColors.signUpBtnText,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
