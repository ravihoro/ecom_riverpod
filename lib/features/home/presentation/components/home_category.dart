import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_category_circle.dart';
import 'package:ecom_riverpod/core/design_system/components/title_with_see_all.dart';
import 'package:ecom_riverpod/core/router/route_names.dart';
import 'package:ecom_riverpod/core/router/route_paths.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  static const categoryList = [
    _CategoryData('Beauty', Icons.face_retouching_natural, 'beauty'),
    _CategoryData('Fashion', Icons.checkroom, 'mens-shirts'),
    _CategoryData('Laptops', Icons.laptop_mac, 'laptops'),
    _CategoryData('Mobiles', Icons.smartphone, 'smartphones'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Column(
        spacing: AppSpacing.md,
        children: [
          TitleWithSeeAll(
            title: 'Category',
            onTap: () {
              context.go(RoutePaths.category);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: AppSpacing.sm,
            children: categoryList.map((e) {
              return AppCategoryCircle(
                icon: e.icon,
                title: e.title,
                onTap: () {
                  context.pushNamed(
                    RouteNames.productList,
                    pathParameters: {'category': e.slug},
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class _CategoryData {
  final String title;
  final String slug;
  final IconData icon;

  const _CategoryData(this.title, this.icon, this.slug);
}
