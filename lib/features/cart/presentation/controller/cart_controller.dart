import 'package:ecom_riverpod/features/cart/presentation/state/cart_state.dart';
import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_controller.g.dart';

@Riverpod(keepAlive: true)
class CartController extends _$CartController {
  @override
  CartState build() {
    return CartState();
  }

  void addToCart(Product product) {
    final map = Map<Product, int>.from(state.products);

    map.update(product, (qty) => qty + 1, ifAbsent: () => 1);

    state = state.copyWith(products: map);
  }

  void updateQuantity(Product product, int quantity) {
    final map = Map<Product, int>.from(state.products);

    if (quantity <= 0) {
      map.remove(product);
    } else {
      map[product] = quantity;
    }

    state = state.copyWith(products: map);
  }

  void removeProduct(Product product) {
    final map = Map<Product, int>.from(state.products);

    map.remove(product);

    state = state.copyWith(products: map);
  }

  bool isInCart(int productId) {
    return state.products.keys.any((p) => p.id == productId);
  }
}
