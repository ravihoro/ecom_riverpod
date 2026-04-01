import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_product.dart';
import 'package:ecom_riverpod/core/design_system/components/app_scaffold.dart';
import 'package:ecom_riverpod/features/products/presentation/controllers/products_controller.dart';
import 'package:ecom_riverpod/features/products/presentation/states/products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductList extends ConsumerStatefulWidget {
  final String category;
  const ProductList({super.key, required this.category});

  @override
  ConsumerState<ProductList> createState() => _ProductListState();
}

class _ProductListState extends ConsumerState<ProductList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final position = _scrollController.position;

    final scrollPercent = position.pixels / position.maxScrollExtent;

    if (scrollPercent >= 0.8) {
      ref
          .read(productsControllerProvider(widget.category).notifier)
          .loadMore(widget.category);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productsControllerProvider(widget.category));

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
          controller: _scrollController,
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

    return AppScaffold(title: widget.category, body: body);
  }
}
