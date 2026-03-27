import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_font_sizes.dart';
import 'package:flutter/material.dart';

class TitleWithSeeAll extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const TitleWithSeeAll({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: AppFontSizes.lg,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        GestureDetector(
          onTap: onTap,
          child: Text(
            'See All',
            style: TextStyle(
              fontSize: AppFontSizes.md,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
