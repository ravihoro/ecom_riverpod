import 'package:ecom_riverpod/core/components/product_card.dart';
import 'package:ecom_riverpod/core/design_system/app_font_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/features/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LaptopsRow extends ConsumerWidget {
  const LaptopsRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final laptops = ref.watch(
      homeControllerProvider.select((state) => state.laptops),
    );

    final totalWidth = MediaQuery.sizeOf(context).width;

    final width = (totalWidth / 2) - 2 * AppSpacing.md;

    final height = width + 2 * AppSpacing.md + 2 * AppSpacing.sm;

    return laptops.isEmpty
        ? SizedBox.shrink()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: AppSpacing.sm,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: AppSpacing.md),
                child: Text(
                  'Laptops',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSizes.lg,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: AppSpacing.md,
                  children: laptops.map((e) {
                    int index = laptops.indexOf(e);

                    final isFirst = index == 0;
                    final isLast = index == laptops.length - 1;

                    return Padding(
                      padding: EdgeInsets.only(
                        left: isFirst ? AppSpacing.md : 0,
                        right: isLast ? AppSpacing.md : 0,
                      ),
                      child: SizedBox(
                        height: height,
                        child: ProductCard(product: e, cardWidth: width),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          );
  }
}
