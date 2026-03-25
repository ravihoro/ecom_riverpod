import 'package:flutter/material.dart';

abstract class AppColors {
  /// Brand
  static const MaterialColor primary = MaterialColor(0xFFFF4848, {
    50: Color(0xFFFFEAEA),
    100: Color(0xFFFFD6D6),
    200: Color(0xFFFFB0B0),
    300: Color(0xFFFF8A8A),
    400: Color(0xFFFF6A6A),
    500: Color(0xFFFF4848),
    600: Color(0xFFF53F3F),
    700: Color(0xFFE23636),
    800: Color(0xFFC92B2B),
    900: Color(0xFFA81F1F),
  });

  /// Base UI
  static const background = Color(0xFFFFFFFF);
  static const surface = Color(0xFFF7F7F7);

  /// Text
  static const textPrimary = Color(0xFF212121);
  static const textSecondary = Color(0xFF757575);

  /// States
  static const success = Color(0xFF4CAF50);
  static const error = Color(0xFFE53935);
  static const warning = Color(0xFFFFA000);

  /// Ecommerce specific
  static const price = Color(0xFF2E7D32);
  static const rating = Color(0xFFFFC107);
}
