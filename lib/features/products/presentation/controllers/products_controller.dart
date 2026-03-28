import 'package:ecom_riverpod/features/products/domain/usecases/get_products_params.dart';
import 'package:ecom_riverpod/features/products/presentation/states/products_state.dart';
import 'package:ecom_riverpod/features/products/providers/products_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products_controller.g.dart';

@riverpod
class ProductsController extends _$ProductsController {
  static const int _limit = 8;

  @override
  ProductsState build(String category) {
    _getProducts(category, skip: 0);
    return ProductsLoading();
  }

  Future<ProductsState> _getProducts(
    String category, {
    required int skip,
  }) async {
    final usecase = ref.read(getProductsUseCaseProvider);

    final either = await usecase.call(
      GetProductsParams(category, _limit, skip),
    );

    return either.fold(
      (l) => state = ProductsError(l.message),
      (r) => state = ProductsData(r.products, r.skip, r.total),
    );
  }

  Future<void> loadMore(String category) async {
    final currentState = state;

    if (currentState is ProductsData && !currentState.isLoadingMore) {
      if (currentState.products.length >= currentState.total) return;

      state = currentState.copyWith(isLoadingMore: true);

      final nextSkip = currentState.products.length;

      final either = await ref
          .read(getProductsUseCaseProvider)
          .call(GetProductsParams(category, _limit, nextSkip));

      either.fold(
        (l) => state = currentState.copyWith(isLoadingMore: false),
        (r) => state = currentState.copyWith(
          products: [...currentState.products, ...r.products],
          skip: r.skip,
          isLoadingMore: false,
        ),
      );
    }
  }
}
