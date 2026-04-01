import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:flutter/material.dart';

class AppPageIndicator extends StatelessWidget {
  final int currentIndex;
  final int length;

  const AppPageIndicator({
    super.key,
    required this.currentIndex,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: AppSizes.xs,
      children: List.generate(length, (index) {
        return Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentIndex
                ? AppColors.primary
                : Colors.grey.shade200,
          ),
        );
      }),
    );
  }
}
