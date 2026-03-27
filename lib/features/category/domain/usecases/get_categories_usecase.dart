import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/category/domain/entities/category.dart';
import 'package:ecom_riverpod/features/category/domain/repositories/categories_repository.dart';

class GetCategoriesUsecase extends UseCase<List<Category>, NoParams> {
  final CategoriesRepository _repository;

  GetCategoriesUsecase(this._repository);

  @override
  Future<Either<Failure, List<Category>>> call(NoParams params) async {
    return await _repository.getCategories();
  }
}
