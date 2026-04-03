import 'package:ecom_riverpod/core/design_system/app_radius.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:flutter/material.dart';

class ProductUpdateButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color iconColor;
  final VoidCallback? onTap;

  const ProductUpdateButton({
    super.key,
    required this.icon,
    this.iconColor = Colors.black,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(color: color, borderRadius: AppRadius.sm),
        child: Icon(icon, color: iconColor, size: AppSizes.md),
      ),
    );
  }
}
