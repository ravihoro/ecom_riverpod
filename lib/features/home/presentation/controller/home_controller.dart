import 'package:ecom_riverpod/features/home/presentation/state/home_state.dart';
import 'package:ecom_riverpod/features/home/providers/home_providers.dart';
import 'package:ecom_riverpod/features/products/domain/usecases/get_products_params.dart';
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
    final either = await ref
        .read(getLaptopsUseCaseProvider)
        .call(GetProductsParams('laptops', 6, 0));

    either.fold(
      (l) => {},
      (r) => {state = state.copyWith(laptops: r.products)},
    );
  }

  void _getWomenBags() async {
    final either = await ref
        .read(getWomenBagsUseCaseProvider)
        .call(GetProductsParams('womens-bags', 6, 0));

    either.fold(
      (l) => {},
      (r) => {state = state.copyWith(womenBags: r.products)},
    );
  }
}
