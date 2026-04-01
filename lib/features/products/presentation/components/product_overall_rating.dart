import 'package:ecom_riverpod/core/design_system/app_font_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/components/app_star_rating.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:ecom_riverpod/features/products/presentation/components/rating_graph.dart';
import 'package:flutter/material.dart';

class ProductOverallRating extends StatelessWidget {
  final List<Review> reviews;
  final double rating;

  const ProductOverallRating({
    super.key,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  rating.toString(),
                  style: TextStyle(fontSize: AppFontSizes.xxxl),
                ),
                AppStarRating(rating: rating, size: AppSizes.lg),
                Text('(${reviews.length} Reviews)'),
              ],
            ),
          ),

          VerticalDivider(
            color: Colors.grey.shade200,
            thickness: 1,
            width: AppSizes.lg,
          ),
          Expanded(child: RatingGraph(reviews: reviews)),
        ],
      ),
    );
  }
}
