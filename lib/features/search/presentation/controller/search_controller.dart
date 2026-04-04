import 'dart:async';

import 'package:ecom_riverpod/features/search/domain/usecases/search_params.dart';
import 'package:ecom_riverpod/features/search/presentation/providers/search_providers.dart';
import 'package:ecom_riverpod/features/search/presentation/state/search_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_controller.g.dart';

@riverpod
class SearchController extends _$SearchController {
  static const int _limit = 8;
  Timer? _debounce;

  @override
  SearchPageState build() {
    ref.onDispose(() {
      _debounce?.cancel();
    });

    return SearchPageState(status: SearchInitial());
  }

  void onQueryChange(String query) {
    _debounce?.cancel();

    _debounce = Timer(const Duration(milliseconds: 400), () {
      _searchProducts(query, skip: 0);
    });
  }

  Future<void> _searchProducts(String query, {required int skip}) async {
    state = state.copyWith(query: query, status: SearchLoading());

    final usecase = ref.read(searchProductsUseCaseProvider);

    final either = await usecase.call(SearchParams(query, _limit, skip));

    return either.fold(
      (l) => state = state.copyWith(status: SearchError(l.message)),
      (r) => state = state.copyWith(
        status: SearchData(r.products, r.skip, r.total),
      ),
    );
  }

  Future<void> loadMore() async {
    final currentState = state.status;

    if (currentState is SearchData && !currentState.isLoadingMore) {
      if (currentState.products.length >= currentState.total) return;

      state = state.copyWith(
        status: currentState.copyWith(isLoadingMore: true),
      );

      final nextSkip = currentState.products.length;

      final either = await ref
          .read(searchProductsUseCaseProvider)
          .call(SearchParams(state.query, _limit, nextSkip));

      either.fold(
        (l) => state = state.copyWith(
          status: currentState.copyWith(isLoadingMore: false),
        ),
        (r) => state = state.copyWith(
          status: currentState.copyWith(
            products: [...currentState.products, ...r.products],
            skip: r.skip,
            isLoadingMore: false,
          ),
        ),
      );
    }
  }

  void clear() {
    state = SearchPageState(status: SearchInitial());
  }
}
