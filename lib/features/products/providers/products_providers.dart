import 'package:ecom_riverpod/core/network/auth_interceptors.dart';
import 'package:ecom_riverpod/features/products/data/datasources/products_datasource.dart';
import 'package:ecom_riverpod/features/products/data/datasources/products_datasource_impl.dart';
import 'package:ecom_riverpod/features/products/data/repositories/products_repository_impl.dart';
import 'package:ecom_riverpod/features/products/domain/repositories/products_repository.dart';
import 'package:ecom_riverpod/features/products/domain/usecases/get_product_by_id_usecase.dart';
import 'package:ecom_riverpod/features/products/domain/usecases/get_products_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productsDataSourceProvider = Provider<ProductsDatasource>((ref) {
  final dio = ref.read(dioProvider);

  return ProductsDatasourceImpl(dio);
});

final productsRepositoryProvider = Provider<ProductsRepository>((ref) {
  final datasource = ref.read(productsDataSourceProvider);

  return ProductsRepositoryImpl(datasource);
});

final getProductsUseCaseProvider = Provider<GetProductsUsecase>((ref) {
  final repository = ref.read(productsRepositoryProvider);

  return GetProductsUsecase(repository);
});

final getProductByIdUseCaseProvider = Provider<GetProductByIdUsecase>((ref) {
  final repository = ref.read(productsRepositoryProvider);

  return GetProductByIdUsecase(repository);
});
