import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_radius.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/components/app_rating.dart';
import 'package:ecom_riverpod/core/router/route_names.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppProduct extends StatelessWidget {
  final Product product;
  final double height;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;

  const AppProduct({
    super.key,
    required this.product,
    required this.height,
    this.isFavorite = false,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          RouteNames.productDetail,
          pathParameters: {'id': '${product.id}'},
        );
      },
      child: Column(
        spacing: AppSizes.xs,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height,
            width: height,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: AppRadius.sm,
            ),
            child: Stack(
              children: [
                CachedNetworkImage(imageUrl: product.thumbnail),
                Positioned(
                  right: AppSizes.sm,
                  top: AppSizes.sm,
                  child: GestureDetector(
                    onTap: onFavoriteTap,
                    child: Container(
                      height: AppSizes.lg,
                      width: AppSizes.lg,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: AppColors.primary,
                        size: AppSizes.md,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: AppSizes.md,
            width: height,
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
                AppRating(rating: product.rating),
              ],
            ),
          ),
          SizedBox(
            height: AppSizes.md,
            width: height,
            child: Text(
              '\$${product.price}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
