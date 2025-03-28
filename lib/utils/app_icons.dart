import 'package:flutter/material.dart';
import 'package:movieapp/utils/app_colors.dart';

class AppIcons {
  AppIcons._();

  static const Icon prefixIcon1 = Icon(
    Icons.mail,
    size: 30,
    color: AppColors.prefixIconColor,
  );

  static const Icon prefixIcon2 = Icon(
    Icons.lock,
    size: 30,
    color: AppColors.prefixIconColor,
  );

  static const Icon suffixIcon = Icon(
    Icons.remove_red_eye,
    size: 24,
    color: AppColors.suffixIconColor,
  );

  static const Icon searchPrefix =
      Icon(Icons.list, size: 30, color: AppColors.prefixIconColor);


  // SettingsPage
  static const Icon settingsIcon1 = Icon(Icons.person);
  static const Icon settingsIcon2 = Icon(Icons.lock);
  static const Icon settingsIcon3 = Icon(Icons.play_circle_fill);
  static const Icon settingsIcon4 = Icon(Icons.notifications);
  static const Icon settingsIcon5 = Icon(Icons.storage);
  static const Icon settingsIcon6 = Icon(Icons.accessibility);
  static const Icon settingsIcon7 = Icon(Icons.help);
}
