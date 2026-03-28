import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:ecom_riverpod/features/products/providers/products_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_controller.g.dart';

@riverpod
class ProductController extends _$ProductController {
  @override
  FutureOr<Product> build(int id) async {
    return await _getProductById(id);
  }

  Future<Product> _getProductById(int id) async {
    final either = await ref.read(getProductByIdUseCaseProvider)(id);

    return either.fold((l) => throw l.message, (r) => r);
  }
}
