import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  final String description;

  const ProductDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Product Details', style: TextStyle(fontWeight: FontWeight.bold)),
        Text(description),
      ],
    );
  }
}
