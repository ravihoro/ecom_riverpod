import 'package:ecom_riverpod/core/design_system/app_font_sizes.dart';
import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  final double price;

  const ProductPrice({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$$price',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.lg),
    );
  }
}
