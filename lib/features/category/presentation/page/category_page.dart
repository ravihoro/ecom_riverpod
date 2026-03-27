import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/components/app_divider.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/features/category/domain/entities/category.dart';
import 'package:ecom_riverpod/features/category/presentation/controllers/categories_controller.dart';
import 'package:ecom_riverpod/features/category/presentation/state/categories_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryPage extends ConsumerWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoriesControllerProvider);

    final Widget body = switch (state) {
      CategoriesLoading() => const Center(child: CircularProgressIndicator()),
      CategoriesError(error: final message) => Center(
        child: Text('Error: $message'),
      ),
      CategoriesData(categories: final list) => ListView.separated(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final category = list[index];
          return ListTile(
            title: Text(category.name),
            onTap: () => {},
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: AppSizes.md,
              color: AppColors.primary,
            ),
          );
        },
        separatorBuilder: (context, index) => AppDivider(),
      ),
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Category', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      body: body,
    );
  }
}
