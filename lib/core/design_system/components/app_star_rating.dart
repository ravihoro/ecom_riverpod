import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:flutter/material.dart';

class AppStarRating extends StatelessWidget {
  final double rating;
  final double? size;

  const AppStarRating({super.key, required this.rating, this.size});

  @override
  Widget build(BuildContext context) {
    final starSize = size ?? AppSizes.md;

    final int fullStars = rating.floor();
    final bool hasHalfStar = (rating - fullStars) >= 0.5;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        IconData icon;
        Color color;

        if (index < fullStars) {
          icon = Icons.star;
          color = Colors.amber;
        } else if (index == fullStars && hasHalfStar) {
          icon = Icons.star_half;
          color = Colors.amber;
        } else {
          icon = Icons.star_border;
          color = Colors.grey.shade300;
        }

        return Icon(icon, color: color, size: starSize);
      }),
    );
  }
}
