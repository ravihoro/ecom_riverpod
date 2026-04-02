import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';

class FavoritesState {
  final List<Product> items;
  final Set<int> ids;

  const FavoritesState({this.items = const [], this.ids = const {}});

  FavoritesState copyWith({List<Product>? items, Set<int>? ids}) {
    return FavoritesState(items: items ?? this.items, ids: ids ?? this.ids);
  }
}
