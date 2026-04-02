import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:flutter/material.dart';

class ShippingDetail extends StatelessWidget {
  final String text;

  const ShippingDetail({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSpacing.sm,
      children: [
        Icon(Icons.local_shipping_outlined, color: AppColors.primary),
        Expanded(child: Text(text)),
      ],
    );
  }
}
