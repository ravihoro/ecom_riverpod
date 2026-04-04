import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/features/home/presentation/components/home_app_bar.dart';
import 'package:ecom_riverpod/features/home/presentation/components/home_banners.dart';
import 'package:ecom_riverpod/features/home/presentation/components/home_category.dart';
import 'package:ecom_riverpod/features/home/presentation/components/laptops_row.dart';
import 'package:ecom_riverpod/features/home/presentation/components/women_bags_row.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: AppSpacing.md,
          mainAxisSize: MainAxisSize.min,
          children: [
            HomeAppBar(),
            HomeBanners(),
            HomeCategory(),
            LaptopsRow(),
            WomenBagsRow(),
          ],
        ),
      ),
    );
  }
}
