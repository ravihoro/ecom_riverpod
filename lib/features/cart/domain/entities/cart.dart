import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';

@freezed
abstract class Cart with _$Cart {
  const factory Cart({
    required int id,
    required int userId,
    required List<CartItem> items,
    required double total,
    required double discountedTotal,
    required int totalProducts,
    required int totalQuantity,
  }) = _Cart;
}

@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    required int productId,
    required String title,
    required double price,
    required int quantity,
    required double total,
    required double discountPercentage,
    required double discountedPrice,
    required String thumbnail,
  }) = _CartItem;
}
