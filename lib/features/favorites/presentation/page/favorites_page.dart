import 'package:ecom_riverpod/core/components/product_card.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_product_list.dart';
import 'package:ecom_riverpod/core/design_system/components/app_scaffold.dart';
import 'package:ecom_riverpod/features/favorites/presentation/controller/favorites_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesControllerProvider);

    final spacingWidth = (2 * AppSpacing.sm) + AppSpacing.md;
    final totalWidth = MediaQuery.sizeOf(context).width;

    final cardWidth = (totalWidth - spacingWidth) / 2;

    Widget body;

    if (favorites.items.isEmpty) {
      body = Center(child: Text('No Favorites'));
    } else {
      body = Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: AppProductList(
          itemCount: favorites.items.length,
          itemBuilder: (context, index) {
            final product = favorites.items[index];

            return ProductCard(product: product, cardWidth: cardWidth);
          },
        ),
      );
    }

    return AppScaffold(title: 'Favorites', body: body);
  }
}
