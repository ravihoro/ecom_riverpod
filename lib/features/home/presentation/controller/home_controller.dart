import 'package:ecom_riverpod/features/home/presentation/state/home_state.dart';
import 'package:ecom_riverpod/features/home/providers/home_providers.dart';
import 'package:ecom_riverpod/features/products/domain/usecases/get_products_params.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  HomeState build() {
    _getLaptops();
    _getWomenBags();
    return HomeState();
  }

  void _getLaptops() async {
    final cache = await ref
        .read(getLaptopsUseCaseProvider)
        .call(GetProductsParams('laptops', 6, 0, useCache: true));

    cache.fold((l) => {}, (r) => {state = state.copyWith(laptops: r.products)});

    final freshData = await ref
        .read(getLaptopsUseCaseProvider)
        .call(GetProductsParams('laptops', 6, 0));

    freshData.fold(
      (l) => {},
      (r) => {
        if (!listEquals(state.laptops, r.products))
          {state = state.copyWith(laptops: r.products)},
      },
    );
  }

  void _getWomenBags() async {
    final cache = await ref
        .read(getWomenBagsUseCaseProvider)
        .call(GetProductsParams('womens-bags', 6, 0, useCache: true));

    cache.fold(
      (l) => {},
      (r) => {state = state.copyWith(womenBags: r.products)},
    );

    final freshData = await ref
        .read(getWomenBagsUseCaseProvider)
        .call(GetProductsParams('womens-bags', 6, 0));

    freshData.fold(
      (l) => {},
      (r) => {
        if (!listEquals(state.womenBags, r.products))
          {state = state.copyWith(womenBags: r.products)},
      },
    );
  }
}
