import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_product.dart';
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

    final remainingHeight = 40;

    final totalHeight = cardWidth + remainingHeight;

    final body = switch (state) {
      ProductsLoading() => Center(child: CircularProgressIndicator()),
      ProductsError(error: final errorMsg) => Center(
        child: Text('Error: $errorMsg'),
      ),
      ProductsData(products: final items) => Padding(
        padding: const EdgeInsets.all(AppSpacing.sm),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: AppSpacing.md,
            crossAxisSpacing: AppSpacing.md,
            mainAxisExtent: totalHeight,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) =>
              AppProduct(product: items[index], height: cardWidth),
        ),
      ),
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(category, style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: body,
    );
  }
}
