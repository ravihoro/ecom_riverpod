import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:flutter/material.dart';

class ProductTags extends StatelessWidget {
  final List<String> tags;

  const ProductTags({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: AppSpacing.sm,
        children: tags
            .map(
              (e) => Chip(
                label: Text(e, style: TextStyle(color: Colors.white)),
                backgroundColor: AppColors.primary,
                side: BorderSide.none,
              ),
            )
            .toList(),
      ),
    );
  }
}
