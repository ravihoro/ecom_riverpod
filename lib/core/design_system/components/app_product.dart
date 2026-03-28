import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecom_riverpod/core/design_system/app_radius.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:flutter/material.dart';

class AppProduct extends StatelessWidget {
  final Product product;
  final double height;

  const AppProduct({super.key, required this.product, required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSizes.xs,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height,
          width: height,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: AppRadius.sm,
          ),
          child: CachedNetworkImage(imageUrl: product.thumbnail),
        ),

        SizedBox(
          height: AppSizes.md,
          child: Row(
            spacing: AppSizes.sm,
            children: [
              Expanded(
                child: Text(
                  product.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Rating(rating: product.rating),
            ],
          ),
        ),
        SizedBox(
          height: AppSizes.md,
          child: Text(
            '\$${product.price}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class Rating extends StatelessWidget {
  final double rating;

  const Rating({super.key, required this.rating});

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
