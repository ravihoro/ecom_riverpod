import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';

class CartState {
  final Map<Product, int> products;

  const CartState({this.products = const {}});

  int get totalQuantity => products.values.fold(0, (sum, qty) => sum + qty);

  double get total => products.entries.fold(
    0,
    (sum, entry) => sum + (entry.key.price * entry.value),
  );

  CartState copyWith({Map<Product, int>? products}) {
    return CartState(products: products ?? this.products);
  }
}
