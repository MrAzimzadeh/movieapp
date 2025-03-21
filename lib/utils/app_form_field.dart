import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/utils/app_colors.dart';

class SignupFormField extends StatefulWidget {
  const SignupFormField({
    super.key,
    this.prefixIcon,
    required this.hintText,
    this.labelText,
    this.suffixIcon
  });

  final Widget? prefixIcon;
  final String hintText;
  final String? labelText;
  final Widget? suffixIcon;

  @override
  State<SignupFormField> createState() => _SignupFormFieldState();
}

class _SignupFormFieldState extends State<SignupFormField> {
  FocusNode myFocusNode = FocusNode();
  bool hasFocus = false;

  @override
  void initState() {
    super.initState();
    myFocusNode.addListener(() {
      print('Has focus: ${myFocusNode.hasFocus}');
      setState(() {
        hasFocus = myFocusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        focusNode: myFocusNode,
        
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: GoogleFonts.roboto(
            color: AppColors.textfieldSide,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: widget.suffixIcon,
          floatingLabelStyle: TextStyle(
            color: hasFocus ? AppColors.textfieldSide : AppColors.passwordText,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: widget.hintText,
          hintStyle: GoogleFonts.roboto(
            color: AppColors.emailText,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: widget.prefixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1),
            borderSide: const BorderSide(
              color: AppColors.loginBtn,
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
          color: hasFocus ? AppColors.emailText : AppColors.passwordField,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
