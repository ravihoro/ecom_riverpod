import 'package:ecom_riverpod/features/category/data/model/category_model.dart';

abstract class CategoriesDataSource {
  Future<List<CategoryModel>> getCategories();
}
