import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';

abstract class SearchRepository {
  Future<Either<Failure, ProductsEntity>> searchProduct(String query);
}
