import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/exceptions.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/features/category/data/datasources/categories_data_source.dart';
import 'package:ecom_riverpod/features/category/data/model/category_model.dart';
import 'package:ecom_riverpod/features/category/domain/entities/category.dart';
import 'package:ecom_riverpod/features/category/domain/repositories/categories_repository.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesDataSource _dataSource;

  const CategoriesRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<Category>>> getCategories() async {
    try {
      final list = await _dataSource.getCategories();
      return Right(list.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    }
  }
}
