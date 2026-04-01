import 'package:ecom_riverpod/core/design_system/app_font_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/features/home/presentation/components/banner_carousel.dart';
import 'package:flutter/material.dart';

class HomeBanners extends StatelessWidget {
  const HomeBanners({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      'https://i.pinimg.com/originals/e3/56/4d/e3564db3fe0e206d9c4e866435e203c7.jpg',
      'https://cdn.vectorstock.com/i/500p/57/56/shopping-cart-banner-online-store-vector-42935756.jpg',
      'https://cdn.vectorstock.com/i/500p/91/98/online-shopping-discount-banner-vector-47519198.jpg',
    ];

    return Column(
      spacing: AppSpacing.sm,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
          child: Text(
            '#Special For You',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSizes.lg,
            ),
          ),
        ),
        BannerCarousel(images: images),
      ],
    );
  }
}
