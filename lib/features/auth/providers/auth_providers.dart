import 'package:ecom_riverpod/core/network/dio_provider.dart';
import 'package:ecom_riverpod/core/storage/token_storage_provider.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:ecom_riverpod/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((ref) {
  final dio = ref.read(dioProvider);

  return AuthRemoteDataSource(dio);
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final dataSource = ref.read(authRemoteDataSourceProvider);
  final tokenStorage = ref.read(tokenStorageProvider);

  return AuthRepositoryImpl(dataSource, tokenStorage);
});
