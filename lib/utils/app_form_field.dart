import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            color: Colors.green,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always, // Label həmişə yuxarıda qalır
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(
            color: Colors.green,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: prefixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8), // Sərhədin kənar yuvarlaqlığı
            borderSide: const BorderSide(
              color: Colors.green,
              width: 1, 
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.green,
              width: 2,
            ),
          ),
        ),
        style: GoogleFonts.roboto(
          color: Colors.green,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
