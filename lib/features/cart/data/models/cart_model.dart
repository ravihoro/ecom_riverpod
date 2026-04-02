import 'package:ecom_riverpod/features/cart/domain/entities/cart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
abstract class CartModel with _$CartModel {
  const factory CartModel({
    required int id,
    required int userId,
    required double total,
    required double discountedTotal,
    required int totalProducts,
    required int totalQuantity,
    @JsonKey(name: 'products') required List<CartItemModel> items,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

@freezed
abstract class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    @JsonKey(name: 'id') required int productId,
    required String title,
    required double price,
    required int quantity,
    required double total,
    required double discountPercentage,
    required double discountedPrice,
    required String thumbnail,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}

extension CartModelMapper on CartModel {
  Cart toEntity() {
    return Cart(
      id: id,
      userId: userId,
      total: total,
      discountedTotal: discountedTotal,
      totalProducts: totalProducts,
      totalQuantity: totalQuantity,
      items: items.map((e) {
        return CartItem(
          productId: e.productId,
          title: e.title,
          price: e.price,
          quantity: e.quantity,
          total: e.total,
          discountPercentage: e.discountPercentage,
          discountedPrice: e.discountedPrice,
          thumbnail: e.thumbnail,
        );
      }).toList(),
    );
  }
}
