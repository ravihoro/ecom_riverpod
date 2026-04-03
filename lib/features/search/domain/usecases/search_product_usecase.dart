import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:ecom_riverpod/features/search/domain/repositories/search_repository.dart';

class SearchProductUsecase extends UseCase<ProductsEntity, String> {
  final SearchRepository _repository;

  SearchProductUsecase(this._repository);

  @override
  Future<Either<Failure, ProductsEntity>> call(String query) async {
    return await _repository.searchProduct(query);
  }
}
