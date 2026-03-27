import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/features/category/domain/entities/category.dart';

abstract class CategoriesRepository {
  Future<Either<Failure, List<Category>>> getCategories();
}
