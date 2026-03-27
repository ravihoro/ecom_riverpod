import 'package:ecom_riverpod/features/products/domain/usecases/get_products_params.dart';
import 'package:ecom_riverpod/features/products/presentation/states/products_state.dart';
import 'package:ecom_riverpod/features/products/providers/products_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products_controller.g.dart';

@riverpod
class ProductsController extends _$ProductsController {
  static const int _limit = 6;

  @override
  FutureOr<ProductsState> build(String category) async {
    return await _getProducts(category, skip: 0);
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
      (l) => ProductsError(l.message),
      (r) => ProductsData(r.products, r.skip, r.total),
    );
  }

  Future<void> _loadMore(String category) async {
    final currentState = state.value;

    if (currentState is ProductsData && !currentState.isLoadingMore) {
      if (currentState.products.length >= currentState.total) return;

      state = AsyncData(currentState.copyWith(isLoadingMore: true));

      final nextSkip = currentState.products.length;

      final either = await ref
          .read(getProductsUseCaseProvider)
          .call(GetProductsParams(category, _limit, nextSkip));

      either.fold(
        (l) => state = AsyncData(currentState.copyWith(isLoadingMore: false)),
        (r) => state = AsyncData(
          currentState.copyWith(
            products: [...currentState.products, ...r.products],
            skip: r.skip,
            isLoadingMore: false,
          ),
        ),
      );
    }
  }
}
