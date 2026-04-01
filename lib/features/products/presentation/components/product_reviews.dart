import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_font_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_star_rating.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:ecom_riverpod/features/products/presentation/components/product_overall_rating.dart';
import 'package:ecom_riverpod/features/products/presentation/components/review_filters.dart';
import 'package:flutter/material.dart';

class ProductReviews extends StatelessWidget {
  final double rating;
  final List<Review> reviews;

  const ProductReviews({
    super.key,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Product Reviews',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSizes.lg,
                ),
              ),
            ),

            Text('Write a review', style: TextStyle(color: AppColors.primary)),
          ],
        ),
        ProductOverallRating(rating: rating, reviews: reviews),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.md),
          child: Divider(color: Colors.grey.shade200),
        ),

        ReviewFilters(),
        SizedBox(height: AppSizes.sm),
        Flexible(
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return _ProductReview(review: reviews[index]);
            },
            separatorBuilder: (_, __) => Divider(),
            itemCount: reviews.length,
          ),
        ),
      ],
    );
  }
}

class _ProductReview extends StatelessWidget {
  final Review review;

  const _ProductReview({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSpacing.sm,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    review.reviewerName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    review.reviewerEmail,
                    style: TextStyle(
                      fontSize: AppFontSizes.sm,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              review.date.toString().substring(0, 10),
              style: TextStyle(fontSize: AppFontSizes.sm, color: Colors.grey),
            ),
          ],
        ),

        Text(review.comment),

        AppStarRating(rating: review.rating.toDouble()),
      ],
    );
  }
}
