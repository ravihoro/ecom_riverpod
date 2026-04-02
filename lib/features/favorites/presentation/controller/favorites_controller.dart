import 'package:ecom_riverpod/features/favorites/presentation/state/favorites_state.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_controller.g.dart';

@riverpod
class FavoritesController extends _$FavoritesController {
  @override
  FavoritesState build() {
    return const FavoritesState();
  }

  void addFavorite(Product product) {
    if (state.ids.contains(product.id)) return;

    state = state.copyWith(
      items: [...state.items, product],
      ids: {...state.ids, product.id},
    );
  }

  void removeProduct(int id) {
    state = state.copyWith(
      items: state.items.where((p) => p.id != id).toList(),
      ids: {...state.ids}..remove(id),
    );
  }

  void toggleFavorite(Product product) {
    if (state.ids.contains(product.id)) {
      removeProduct(product.id);
    } else {
      addFavorite(product);
    }
  }

  bool isFavorite(int id) {
    return state.ids.contains(id);
  }
}
