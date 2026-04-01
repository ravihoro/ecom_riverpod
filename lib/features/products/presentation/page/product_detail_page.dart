import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecom_riverpod/core/design_system/app_font_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_image_carousel.dart';
import 'package:ecom_riverpod/core/design_system/components/app_rating.dart';
import 'package:ecom_riverpod/core/design_system/components/app_scaffold.dart';
import 'package:ecom_riverpod/features/products/presentation/components/product_description.dart';
import 'package:ecom_riverpod/features/products/presentation/components/product_information.dart';
import 'package:ecom_riverpod/features/products/presentation/components/product_price.dart';
import 'package:ecom_riverpod/features/products/presentation/components/product_reviews.dart';
import 'package:ecom_riverpod/features/products/presentation/components/product_tags.dart';
import 'package:ecom_riverpod/features/products/presentation/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetailPage extends ConsumerWidget {
  final int id;

  const ProductDetailPage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productControllerProvider(id));

    final width = MediaQuery.sizeOf(context).width;

    return state.when(
      error: (err, stack) => Scaffold(
        body: Center(
          child: Text('Error: $err', style: TextStyle(color: Colors.black)),
        ),
      ),
      loading: () => Scaffold(body: Center(child: CircularProgressIndicator())),
      data: (product) => AppScaffold(
        title: product.title,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: AppSizes.md,
            children: [
              AppImageCarousel(
                itemCount: product.images.length,
                itemBuilder: (context, index) {
                  String image = product.images[index];
                  return DecoratedBox(
                    decoration: BoxDecoration(color: Colors.grey.shade100),
                    child: CachedNetworkImage(
                      imageUrl: image,
                      height: 300,
                      width: width,
                    ),
                  );
                },
              ),

              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: AppSpacing.md,
                    children: [
                      Row(
                        spacing: AppSpacing.sm,
                        children: [
                          Expanded(
                            child: Text(
                              product.title,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: AppFontSizes.lg,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          AppRating(rating: product.rating),
                        ],
                      ),

                      ProductPrice(price: product.price),

                      ProductTags(tags: product.tags),

                      ProductDescription(description: product.description),

                      ProductInformation(
                        brand: product.brand ?? '',
                        dimensions: product.dimensions,
                        warranty: product.warrantyInformation,
                        shipping: product.shippingInformation,
                      ),

                      Flexible(
                        child: ProductReviews(
                          rating: product.rating,
                          reviews: product.reviews,
                        ),
                      ),
                    ],
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
