import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:flutter/material.dart';

class AppRating extends StatelessWidget {
  final double rating;

  const AppRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.star, color: Colors.amber, size: AppSizes.md),
        Text('$rating', style: TextStyle(color: Colors.grey.shade500)),
      ],
    );
  }
}
