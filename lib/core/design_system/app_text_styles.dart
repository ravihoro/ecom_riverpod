import 'package:ecom_riverpod/core/design_system/app_font_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final heading = GoogleFonts.poppins(
    fontSize: AppFontSizes.xxl,
    fontWeight: FontWeight.w600,
  );

  static final title = GoogleFonts.poppins(
    fontSize: AppFontSizes.lg,
    fontWeight: FontWeight.w600,
  );

  static final body = GoogleFonts.poppins(fontSize: AppFontSizes.md);

  static final caption = GoogleFonts.poppins(fontSize: AppFontSizes.sm);
}
