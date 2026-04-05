import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';

abstract class ProductsRepository {
  Future<Either<Failure, ProductsEntity>> getProducts(
    String category,
    int limit,
    int skip, {
    bool useCache,
  });

  Future<Either<Failure, Product>> getProductById(int id);
}
