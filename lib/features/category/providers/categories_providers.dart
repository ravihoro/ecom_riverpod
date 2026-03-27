import 'package:ecom_riverpod/core/network/auth_interceptors.dart';
import 'package:ecom_riverpod/features/category/data/datasources/categories_data_source.dart';
import 'package:ecom_riverpod/features/category/data/datasources/categories_data_source_impl.dart';
import 'package:ecom_riverpod/features/category/data/repositories/categories_repository_impl.dart';
import 'package:ecom_riverpod/features/category/domain/repositories/categories_repository.dart';
import 'package:ecom_riverpod/features/category/domain/usecases/get_categories_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoriesDataSourceProvider = Provider<CategoriesDataSource>((ref) {
  final dio = ref.read(dioProvider);

  return CategoriesDataSourceImpl(dio);
});

final categoriesRepositoryProvider = Provider<CategoriesRepository>((ref) {
  final datasource = ref.read(categoriesDataSourceProvider);

  return CategoriesRepositoryImpl(datasource);
});

final getCategoriesUseCaseProvider = Provider<GetCategoriesUsecase>((ref) {
  final repository = ref.read(categoriesRepositoryProvider);

  return GetCategoriesUsecase(repository);
});
