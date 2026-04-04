import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:ecom_riverpod/features/products/domain/repositories/products_repository.dart';
import 'package:ecom_riverpod/features/products/domain/usecases/get_products_params.dart';

class GetLaptopsUsecase extends UseCase<ProductsEntity, GetProductsParams> {
  final ProductsRepository _repository;

  GetLaptopsUsecase(this._repository);

  @override
  Future<Either<Failure, ProductsEntity>> call(GetProductsParams params) async {
    return await _repository.getProducts(
      params.category,
      params.limit,
      params.skip,
    );
  }
}
