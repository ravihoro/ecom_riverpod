import 'package:ecom_riverpod/core/components/product_card.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_product_list.dart';
import 'package:ecom_riverpod/core/design_system/components/app_scaffold.dart';
import 'package:ecom_riverpod/features/products/presentation/controllers/products_controller.dart';
import 'package:ecom_riverpod/features/products/presentation/states/products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductList extends ConsumerWidget {
  final String category;
  const ProductList({super.key, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productsControllerProvider(category));

    final spacingWidth = (2 * AppSpacing.sm) + AppSpacing.md;
    final totalWidth = MediaQuery.sizeOf(context).width;

    final cardWidth = (totalWidth - spacingWidth) / 2;

    final body = switch (state) {
      ProductsLoading() => Center(child: CircularProgressIndicator()),
      ProductsError(error: final errorMsg) => Center(
        child: Text('Error: $errorMsg'),
      ),
      ProductsData(products: final items) => Padding(
        padding: const EdgeInsets.all(AppSpacing.sm),
        child: AppProductList(
          itemCount: items.length,
          loadMore: () {
            ref
                .read(productsControllerProvider(category).notifier)
                .loadMore(category);
          },
          itemBuilder: (context, index) {
            final product = items[index];

            return ProductCard(product: product, cardWidth: cardWidth);
          },
        ),
      ),
    };

    return AppScaffold(title: category, body: body);
  }
}
