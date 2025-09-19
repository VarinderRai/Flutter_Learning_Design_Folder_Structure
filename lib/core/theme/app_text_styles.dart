import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle headline = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: AppColors.textDark,
  );

  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textLight,
  );
}
