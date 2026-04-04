import 'package:ecom_riverpod/features/home/domain/usecases/get_laptops_usecase.dart';
import 'package:ecom_riverpod/features/home/domain/usecases/get_women_bags_usecase.dart';
import 'package:ecom_riverpod/features/products/providers/products_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getLaptopsUseCaseProvider = Provider<GetLaptopsUsecase>((ref) {
  final repository = ref.read(productsRepositoryProvider);

  return GetLaptopsUsecase(repository);
});

final getWomenBagsUseCaseProvider = Provider<GetWomenBagsUsecase>((ref) {
  final repository = ref.read(productsRepositoryProvider);

  return GetWomenBagsUsecase(repository);
});
