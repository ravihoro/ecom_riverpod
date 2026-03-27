import 'package:ecom_riverpod/features/products/data/models/products_response_model.dart';

abstract class ProductsDatasource {
  Future<ProductsResponseModel> getProducts({
    required String category,
    int limit,
    int skip,
  });
}
