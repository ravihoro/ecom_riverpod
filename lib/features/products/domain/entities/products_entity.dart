import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_entity.freezed.dart';

@freezed
abstract class ProductsEntity with _$ProductsEntity {
  const factory ProductsEntity({
    required List<Product> products,
    required int total,
    required int skip,
    required int limit,
  }) = _ProductsEntity;
}

@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required List<String> tags,
    String? brand,
    required String sku,
    required int weight,
    required Dimensions dimensions,
    required String warrantyInformation,
    required String shippingInformation,
    required String availabilityStatus,
    required List<Review> reviews,
    required String returnPolicy,
    required int minimumOrderQuantity,
    required ProductMeta meta,
    required List<String> images,
    required String thumbnail,
  }) = _Product;
}

@freezed
abstract class Dimensions with _$Dimensions {
  const factory Dimensions({
    required double width,
    required double height,
    required double depth,
  }) = _Dimensions;
}

@freezed
abstract class Review with _$Review {
  const factory Review({
    required int rating,
    required String comment,
    required DateTime date,
    required String reviewerName,
    required String reviewerEmail,
  }) = _Review;
}

@freezed
abstract class ProductMeta with _$ProductMeta {
  const factory ProductMeta({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String barcode,
    required String qrCode,
  }) = _ProductMeta;
}
