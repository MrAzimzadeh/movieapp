import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/utils/app_colors.dart';
import 'package:movieapp/utils/app_form_field.dart';
import 'package:movieapp/utils/app_txt.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 162,
            left: 134.5,
            bottom: 150,
            right: 134.5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppTxt.signupTitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textColor,
                ),
              ),
              Column(
                children: [
                  SignupFormField(
                    hintText: 'example@gmail.com',
                    labelText: 'Email',
                    prefixIcon: Icon(
                      Icons.mail,
                      color: AppColors.emailText,
                    ),
                  ),
                ],
              ),
              // TextField(
              //   decoration: const InputDecoration(
              //     labelText: 'Email',
              //   ),
              // ),
              // const SizedBox(height: 20),
              // TextField(
              //   decoration: const InputDecoration(
              //     labelText: 'Password',
              //   ),
              // ),
              // const SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () {},
              //   child: const Text('Sign Up'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
