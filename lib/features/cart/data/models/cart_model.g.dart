// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartModel _$CartModelFromJson(Map<String, dynamic> json) => _CartModel(
  id: (json['id'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  total: (json['total'] as num).toDouble(),
  discountedTotal: (json['discountedTotal'] as num).toDouble(),
  totalProducts: (json['totalProducts'] as num).toInt(),
  totalQuantity: (json['totalQuantity'] as num).toInt(),
  items: (json['products'] as List<dynamic>)
      .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CartModelToJson(_CartModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'total': instance.total,
      'discountedTotal': instance.discountedTotal,
      'totalProducts': instance.totalProducts,
      'totalQuantity': instance.totalQuantity,
      'products': instance.items,
    };

_CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) =>
    _CartItemModel(
      productId: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      total: (json['total'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      discountedPrice: (json['discountedPrice'] as num).toDouble(),
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$CartItemModelToJson(_CartItemModel instance) =>
    <String, dynamic>{
      'id': instance.productId,
      'title': instance.title,
      'price': instance.price,
      'quantity': instance.quantity,
      'total': instance.total,
      'discountPercentage': instance.discountPercentage,
      'discountedPrice': instance.discountedPrice,
      'thumbnail': instance.thumbnail,
    };
