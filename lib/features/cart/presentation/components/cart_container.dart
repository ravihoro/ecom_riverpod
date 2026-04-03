import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_button.dart';
import 'package:ecom_riverpod/features/cart/presentation/components/cart_item.dart';
import 'package:ecom_riverpod/features/cart/presentation/components/cart_price_row.dart';
import 'package:ecom_riverpod/features/cart/presentation/state/cart_state.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:flutter/material.dart';

class CartContainer extends StatelessWidget {
  final CartState cartState;

  const CartContainer({super.key, required this.cartState});

  @override
  Widget build(BuildContext context) {
    final cartItems = cartState.products.entries.toList();

    return Padding(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    final entry = cartItems[index];
                    final Product product = entry.key;
                    final int quantity = entry.value;

                    return CartItem(product: product, quantity: quantity);
                  },
                  separatorBuilder: (_, __) =>
                      Divider(color: Colors.grey.shade200),
                  itemCount: cartState.products.length,
                ),
                Divider(thickness: 2, color: Colors.grey.shade500),
                Column(
                  spacing: AppSpacing.xs,
                  children: [
                    CartPriceRow(
                      title: 'Sub-total',
                      value: '\$${cartState.subtotalFormatted}',
                    ),
                    CartPriceRow(
                      title: 'Delivery Fee',
                      value: '\$${cartState.deliveryFeeFormatted}',
                    ),

                    CartPriceRow(
                      title: 'Discount',
                      value: ' - \$${cartState.discountFormatted}',
                    ),

                    Divider(color: Colors.grey.shade200),

                    CartPriceRow(
                      title: 'Total Cost',
                      value: '\$${cartState.totalFormatted}',
                    ),
                  ],
                ),
              ],
            ),
          ),

          SafeArea(
            child: AppButton(
              text: 'Proceed to Checkout',
              onPressed: () {},
              enabled: true,
            ),
          ),
        ],
      ),
    );
  }
}
