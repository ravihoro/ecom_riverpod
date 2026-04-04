import 'package:ecom_riverpod/core/network/auth_interceptors.dart';
import 'package:ecom_riverpod/features/search/data/datasources/search_data_source.dart';
import 'package:ecom_riverpod/features/search/data/datasources/search_remote_data_source.dart';
import 'package:ecom_riverpod/features/search/data/repositories/search_repository_impl.dart';
import 'package:ecom_riverpod/features/search/domain/repositories/search_repository.dart';
import 'package:ecom_riverpod/features/search/domain/usecases/search_product_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchDataSourceProvider = Provider<SearchDataSource>((ref) {
  final dio = ref.read(dioProvider);

  return SearchRemoteDataSource(dio);
});

final searchRepositoryProvider = Provider<SearchRepository>((ref) {
  final dataSource = ref.read(searchDataSourceProvider);
  return SearchRepositoryImpl(dataSource);
});

final searchProductsUseCaseProvider = Provider<SearchProductUsecase>((ref) {
  final repository = ref.read(searchRepositoryProvider);
  return SearchProductUsecase(repository);
});
