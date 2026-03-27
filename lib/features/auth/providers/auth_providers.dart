import 'package:ecom_riverpod/core/network/dio_provider.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_local_data_source_impl.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_remote_data_source_impl.dart';
import 'package:ecom_riverpod/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/is_logged_in_usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final authLocalDataSourceProvider = Provider<AuthLocalDataSource>((ref) {
  final storage = FlutterSecureStorage();

  return AuthLocalDataSourceImpl(storage);
});

final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((ref) {
  final dio = ref.read(dioProvider);

  return AuthRemoteDataSourceImpl(dio);
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final localDataSource = ref.read(authLocalDataSourceProvider);
  final remoteDataSource = ref.read(authRemoteDataSourceProvider);

  return AuthRepositoryImpl(localDataSource, remoteDataSource);
});

final isLoggedInUseCaseProvider = Provider<IsLoggedInUsecase>((ref) {
  final repository = ref.read(authRepositoryProvider);
  return IsLoggedInUsecase(repository);
});

final signInUseCaseProvider = Provider<SignInUseCase>((ref) {
  final repository = ref.read(authRepositoryProvider);
  return SignInUseCase(repository);
});

final signOutUseCaseProvider = Provider<SignOutUsecase>((ref) {
  final repository = ref.read(authRepositoryProvider);
  return SignOutUsecase(repository);
});

final getUserUseCaseProvider = Provider<GetUserUsecase>((ref) {
  final repository = ref.read(authRepositoryProvider);
  return GetUserUsecase(repository);
});
