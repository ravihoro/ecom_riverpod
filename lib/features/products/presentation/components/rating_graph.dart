import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_radius.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:flutter/material.dart';

class RatingGraph extends StatelessWidget {
  final List<Review> reviews;

  const RatingGraph({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    final Map<int, int> countMap = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0};

    for (final review in reviews) {
      final rating = review.rating.round(); // assuming double like 4.2
      if (countMap.containsKey(rating)) {
        countMap[rating] = countMap[rating]! + 1;
      }
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        int number = 5 - index;

        return _RatingGraphRow(
          number: number,
          percentage: countMap[number]! / (reviews.length),
        );
      }),
    );
  }
}

class _RatingGraphRow extends StatelessWidget {
  final int number;

  final double percentage;

  const _RatingGraphRow({
    super.key,
    required this.number,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSpacing.sm,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: AppSizes.sm, child: Text(number.toString())),
        Expanded(
          child: LinearProgressIndicator(
            borderRadius: AppRadius.sm,
            value: percentage,
            color: AppColors.primary,
            backgroundColor: Colors.grey.shade400,
          ),
        ),
      ],
    );
  }
}
