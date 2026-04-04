import 'package:ecom_riverpod/features/products/data/models/products_response_model.dart';

abstract class SearchDataSource {
  Future<ProductsResponseModel> searchProduct(
    String query, {
    int limit,
    int skip,
  });
}
