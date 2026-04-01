import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:flutter/material.dart';

class ReviewFilters extends StatelessWidget {
  const ReviewFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: AppSpacing.xs,
        children: [
          Chip(
            label: Text('Filter'),
            avatar: Icon(Icons.filter_list_outlined, color: Colors.black),
            onDeleted: () {},
            deleteIcon: Icon(Icons.arrow_drop_down, color: Colors.black),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50), // makes it pill-shaped
            ),
            side: BorderSide.none,
            backgroundColor: Colors.grey.shade200,
          ),
          _FilterChip(text: 'Verified', isSelected: true),
          _FilterChip(text: 'Latest', isSelected: true),
          _FilterChip(text: 'Detailed Reviews'),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String text;
  final bool isSelected;

  const _FilterChip({super.key, required this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50), // makes it pill-shaped
      ),
      side: BorderSide.none,
      backgroundColor: isSelected ? AppColors.primary : Colors.grey.shade300,
      label: Text(
        text,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
    );
  }
}
