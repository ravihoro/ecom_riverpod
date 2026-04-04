import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/exceptions.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/features/products/data/models/products_response_model.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:ecom_riverpod/features/search/data/datasources/search_data_source.dart';
import 'package:ecom_riverpod/features/search/domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchDataSource _dataSource;

  const SearchRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, ProductsEntity>> searchProduct(
    String query,
    int limit,
    int skip,
  ) async {
    try {
      final response = await _dataSource.searchProduct(
        query,
        limit: limit,
        skip: skip,
      );
      return Right(response.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    }
  }
}
