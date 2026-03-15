import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const heading = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const title = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const body = TextStyle(fontSize: 14, color: AppColors.textSecondary);

  static const price = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.price,
  );
}
