import 'package:ecom_riverpod/core/design_system/components/app_product.dart';
import 'package:ecom_riverpod/features/favorites/presentation/controller/favorites_controller.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductCard extends ConsumerWidget {
  final Product product;
  final double cardWidth;

  const ProductCard({
    super.key,
    required this.product,
    required this.cardWidth,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(
      favoritesControllerProvider.select(
        (state) => state.ids.contains(product.id),
      ),
    );

    final notifier = ref.read(favoritesControllerProvider.notifier);

    return AppProduct(
      product: product,
      height: cardWidth,
      isFavorite: isFavorite,
      onFavoriteTap: isFavorite
          ? () {
              notifier.removeProduct(product.id);
            }
          : () {
              notifier.addFavorite(product);
            },
    );
    ;
  }
}
