import 'package:ecom_riverpod/core/design_system/app_font_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_button.dart';
import 'package:ecom_riverpod/core/router/route_names.dart';
import 'package:ecom_riverpod/features/cart/presentation/controller/cart_controller.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddToCartBottomsheet extends ConsumerWidget {
  final Product product;

  const AddToCartBottomsheet({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(cartControllerProvider);

    final notifier = ref.read(cartControllerProvider.notifier);

    final isInCart = notifier.isInCart(product.id);

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSizes.md),
            topRight: Radius.circular(AppSizes.md),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(0, -2), // 👈 shadow on top
            ),
          ],
        ),
        height: 60,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSizes.xxl,
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: AppButton(
                    text: isInCart ? 'Go to Cart' : 'Add to Cart',
                    enabled: true,
                    onPressed: isInCart
                        ? () {
                            context.pushNamed(RouteNames.cartFullScreen);
                          }
                        : () {
                            notifier.addToCart(product);
                          },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
