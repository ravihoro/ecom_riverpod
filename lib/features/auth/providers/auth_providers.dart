import 'package:ecom_riverpod/core/network/dio_provider.dart';
import 'package:ecom_riverpod/core/storage/token_storage_provider.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_data_source.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:ecom_riverpod/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/is_logged_in_usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRemoteDataSourceProvider = Provider<AuthDataSource>((ref) {
  final dio = ref.read(dioProvider);

  return AuthRemoteDataSource(dio);
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final dataSource = ref.read(authRemoteDataSourceProvider);
  final tokenStorage = ref.read(tokenStorageProvider);

  return AuthRepositoryImpl(dataSource, tokenStorage);
});

final loginUseCaseProvider = Provider<LoginUseCase>((ref) {
  final repository = ref.read(authRepositoryProvider);

  return LoginUseCase(repository);
});

final isLoggedInUseCaseProvider = Provider<IsLoggedInUsecase>((ref) {
  final repository = ref.read(authRepositoryProvider);
  return IsLoggedInUsecase(repository);
});
