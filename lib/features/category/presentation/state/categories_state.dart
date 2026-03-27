import 'package:ecom_riverpod/features/category/domain/entities/category.dart';

sealed class CategoriesState {}

class CategoriesLoading extends CategoriesState {}

class CategoriesError extends CategoriesState {
  final String error;

  CategoriesError(this.error);
}

class CategoriesData extends CategoriesState {
  final List<Category> categories;

  CategoriesData(this.categories);
}
