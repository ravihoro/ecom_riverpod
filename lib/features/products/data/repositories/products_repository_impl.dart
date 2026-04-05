import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/exceptions.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/features/products/data/datasources/products_datasource.dart';
import 'package:ecom_riverpod/features/products/data/models/products_response_model.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:ecom_riverpod/features/products/domain/repositories/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsDatasource _datasource;

  const ProductsRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, ProductsEntity>> getProducts(
    String category,
    int limit,
    int skip, {
    bool useCache = false,
  }) async {
    try {
      final data = await _datasource.getProducts(
        category: category,
        limit: limit,
        skip: skip,
        useCache: useCache,
      );

      return Right(data.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, Product>> getProductById(int id) async {
    try {
      final data = await _datasource.getProductById(id);

      return Right(data.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    }
  }
}
