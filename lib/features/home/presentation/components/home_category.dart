import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_category_circle.dart';
import 'package:ecom_riverpod/features/home/presentation/components/title_with_see_all.dart';
import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  static const categoryList = [
    _CategoryData('Beauty', Icons.face_retouching_natural),
    _CategoryData('Fashion', Icons.checkroom),
    _CategoryData('Laptops', Icons.laptop_mac),
    _CategoryData('Mobiles', Icons.smartphone),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Column(
        spacing: AppSpacing.md,
        children: [
          TitleWithSeeAll(title: 'Category'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: AppSpacing.sm,
            children: categoryList.map((e) {
              return AppCategoryCircle(icon: e.icon, title: e.title);
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class _CategoryData {
  final String title;
  final IconData icon;

  const _CategoryData(this.title, this.icon);
}
