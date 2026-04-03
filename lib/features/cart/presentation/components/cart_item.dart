import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_radius.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/features/cart/presentation/components/product_update_button.dart';
import 'package:ecom_riverpod/features/cart/presentation/controller/cart_controller.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartItem extends ConsumerWidget {
  final Product product;
  final int quantity;

  const CartItem({super.key, required this.product, required this.quantity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IntrinsicHeight(
      child: Row(
        spacing: AppSizes.sm,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: AppRadius.sm,
            ),
            child: CachedNetworkImage(imageUrl: product.thumbnail),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.sm),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.title),
                        Text(
                          product.category,
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          '\$${product.price}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: AppSpacing.sm,
                    children: [
                      ProductUpdateButton(
                        icon: Icons.remove,
                        color: Colors.grey.shade300,
                        onTap: () {
                          ref
                              .read(cartControllerProvider.notifier)
                              .updateQuantity(product, quantity - 1);
                        },
                      ),
                      Text('$quantity'),
                      ProductUpdateButton(
                        icon: Icons.add,
                        color: AppColors.primary,
                        iconColor: Colors.white,
                        onTap: () {
                          ref
                              .read(cartControllerProvider.notifier)
                              .updateQuantity(product, quantity + 1);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
