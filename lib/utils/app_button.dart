import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/utils/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, this.onPressed});
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: 328,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.onboardingBtn,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            )),
        child: Text(
          text,
          style: GoogleFonts.inter(
            color: AppColors.onboardingBtnText,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
