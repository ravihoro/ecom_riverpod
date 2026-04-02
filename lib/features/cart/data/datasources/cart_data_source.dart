import 'package:ecom_riverpod/features/cart/data/models/cart_model.dart';

abstract class CartDataSource {
  Future<CartModel> getCart(int id);

  Future<CartModel> addToCart();
}
