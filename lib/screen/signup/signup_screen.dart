import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/screen/onboarding/onboarding_screen.dart';
import 'package:movieapp/utils/app_btn.dart';
import 'package:movieapp/utils/app_button.dart';
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
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  AppTxt.signupTitle,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              SizedBox.fromSize(
                size: Size(0, 50),
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
                  SizedBox.fromSize(
                    size: Size(0, 20),
                  ),
                  SignupFormField(
                    hintText: 'Username',
                    prefixIcon: Icon(
                      Icons.person,
                      color: AppColors.usernameField,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Text(
                        'Inactive',
                        style: GoogleFonts.roboto(
                          color: AppColors.textColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox.fromSize(
                    size: Size(0, 20),
                  ),
                  SignupFormField(
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColors.usernameText,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: AppColors.usernameText,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Inactive',
                        style: GoogleFonts.roboto(
                          color: AppColors.textColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox.fromSize(
                size: Size(0, 20),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, right: 24, bottom: 8, left: 24),
                child: AppButton(
                  text: AppTxt.signupBtn,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnboardingScreen(),
                    ),
                  ),
                ),
              ),
              SizedBox.fromSize(
                size: Size(0, 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account ?',
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnboardingScreen(),
                        ),
                      );
                    },
                    child: Text('Login',
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.loginBtn,
                        )),
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
