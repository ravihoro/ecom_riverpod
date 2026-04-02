import 'package:ecom_riverpod/core/design_system/app_font_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_radius.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:flutter/material.dart';

class ProductInformation extends StatelessWidget {
  final String brand;
  final Dimensions dimensions;
  final String warranty;

  const ProductInformation({
    super.key,
    required this.brand,
    required this.dimensions,
    required this.warranty,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.sm),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: AppRadius.sm,
      ),
      child: Column(
        spacing: AppSpacing.sm,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Product Information',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSizes.lg,
            ),
          ),
          _ProductInformationRow(title: 'Brand', description: brand),
          _ProductInformationRow(
            title: 'Dimensions',
            description:
                '${dimensions.depth}l x ${dimensions.width}w x ${dimensions.height}h',
          ),
          _ProductInformationRow(title: 'Warranty', description: warranty),
        ],
      ),
    );
  }
}

class _ProductInformationRow extends StatelessWidget {
  final String title;
  final String description;

  const _ProductInformationRow({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$title: ', style: TextStyle(fontWeight: FontWeight.bold)),
        Text(description),
      ],
    );
  }
}
