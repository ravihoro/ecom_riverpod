import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:ecom_riverpod/features/products/domain/repositories/products_repository.dart';

class GetProductByIdUsecase extends UseCase<Product, int> {
  final ProductsRepository _repository;

  GetProductByIdUsecase(this._repository);

  @override
  Future<Either<Failure, Product>> call(int id) async {
    return await _repository.getProductById(id);
  }
}
