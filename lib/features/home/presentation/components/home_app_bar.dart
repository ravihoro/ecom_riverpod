import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_radius.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_text_field.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final radius = Radius.circular(AppSizes.lg);

    return Container(
      padding: const EdgeInsets.only(
        left: AppSpacing.md,
        right: AppSpacing.md,
        bottom: AppSpacing.md,
        top: AppSpacing.xl,
      ),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: radius,
          bottomRight: radius,
        ),
      ),
      child: Column(
        spacing: AppSpacing.md,
        children: [
          Row(
            spacing: AppSpacing.md,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Location', style: TextStyle(color: Colors.white)),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.white,
                          size: AppSizes.md,
                        ),
                        Text(
                          'New York, USA',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Colors.white,
                          size: AppSizes.md,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(AppSpacing.sm),
                decoration: BoxDecoration(
                  borderRadius: AppRadius.sm,
                  color: AppColors.primary.shade300,
                ),
                child: Icon(Icons.notifications, color: Colors.white),
              ),
            ],
          ),
          IntrinsicHeight(
            child: Row(
              spacing: AppSizes.sm,
              children: [
                Expanded(
                  child: AppTextField(
                    placeholder: 'Search',
                    height: AppSizes.msm,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: AppRadius.sm,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.filter_alt,
                    color: AppColors.primary,
                    size: AppSizes.lg,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
