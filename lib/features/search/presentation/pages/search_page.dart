import 'package:ecom_riverpod/core/components/product_card.dart';
import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_product_list.dart';
import 'package:ecom_riverpod/core/design_system/components/app_scaffold.dart';
import 'package:ecom_riverpod/core/design_system/components/app_text_field.dart';
import 'package:ecom_riverpod/features/search/presentation/controller/search_controller.dart';
import 'package:ecom_riverpod/features/search/presentation/state/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchControllerProvider);

    final spacingWidth = (2 * AppSpacing.sm) + AppSpacing.md;
    final totalWidth = MediaQuery.sizeOf(context).width;

    final cardWidth = (totalWidth - spacingWidth) / 2;

    final body = switch (state.status) {
      SearchInitial() => const SizedBox.shrink(),
      SearchLoading() => Center(child: CircularProgressIndicator()),
      SearchError(error: final msg) => Center(child: Text('Error: $msg')),
      SearchData(products: final items) =>
        items.isEmpty
            ? Center(child: Text('No Product Found'))
            : Padding(
                padding: const EdgeInsets.all(AppSpacing.md),
                child: AppProductList(
                  itemCount: items.length,
                  loadMore: () {
                    ref.read(searchControllerProvider.notifier).loadMore();
                  },
                  itemBuilder: (context, index) {
                    final product = items[index];

                    return ProductCard(product: product, cardWidth: cardWidth);
                  },
                ),
              ),
    };

    return AppScaffold(
      backgroundColor: Colors.white,
      header: AppTextField(
        placeholder: 'Search',
        onChanged: (value) {
          ref.read(searchControllerProvider.notifier).onQueryChange(value);
        },
        height: AppSizes.msm,
        prefixIcon: Icon(Icons.search, color: AppColors.primary),
        suffixIcon: Icon(Icons.cancel_outlined, color: AppColors.primary),
      ),
      body: body,
    );
  }
}
