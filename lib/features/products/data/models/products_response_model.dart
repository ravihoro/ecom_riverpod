import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_response_model.freezed.dart';
part 'products_response_model.g.dart';

@freezed
abstract class ProductsResponseModel with _$ProductsResponseModel {
  const factory ProductsResponseModel({
    required List<ProductModel> products,
    required int total,
    required int skip,
    required int limit,
  }) = _ProductResponseModel;

  factory ProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseModelFromJson(json);
}

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
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
    required DimensionsModel dimensions,
    required String warrantyInformation,
    required String shippingInformation,
    required String availabilityStatus,
    required List<ReviewModel> reviews,
    required String returnPolicy,
    required int minimumOrderQuantity,
    required List<String> images,
    required String thumbnail,
    required ProductMetaModel meta,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
abstract class ProductMetaModel with _$ProductMetaModel {
  const factory ProductMetaModel({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String barcode,
    required String qrCode,
  }) = _ProductMetaModel;

  factory ProductMetaModel.fromJson(Map<String, dynamic> json) =>
      _$ProductMetaModelFromJson(json);
}

@freezed
abstract class DimensionsModel with _$DimensionsModel {
  const factory DimensionsModel({
    required double width,
    required double height,
    required double depth,
  }) = _DimensionsModel;

  factory DimensionsModel.fromJson(Map<String, dynamic> json) =>
      _$DimensionsModelFromJson(json);
}

@freezed
abstract class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required int rating,
    required String comment,
    required DateTime date,
    required String reviewerName,
    required String reviewerEmail,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}

extension ProductsResponseMapper on ProductsResponseModel {
  ProductsEntity toEntity() {
    return ProductsEntity(
      products: products.map((m) => m.toEntity()).toList(),
      total: total,
      skip: skip,
      limit: limit,
    );
  }
}

extension ProductModelMapper on ProductModel {
  Product toEntity() {
    return Product(
      id: id,
      title: title,
      description: description,
      category: category,
      price: price,
      discountPercentage: discountPercentage,
      rating: rating,
      stock: stock,
      tags: tags,
      brand: brand,
      sku: sku,
      weight: weight,
      dimensions: dimensions.toEntity(),
      warrantyInformation: warrantyInformation,
      shippingInformation: shippingInformation,
      availabilityStatus: availabilityStatus,
      reviews: reviews.map((r) => r.toEntity()).toList(),
      returnPolicy: returnPolicy,
      minimumOrderQuantity: minimumOrderQuantity,
      meta: meta.toEntity(),
      images: images,
      thumbnail: thumbnail,
    );
  }
}

extension ProductMetaModelMapper on ProductMetaModel {
  ProductMeta toEntity() => ProductMeta(
    createdAt: createdAt,
    updatedAt: updatedAt,
    barcode: barcode,
    qrCode: qrCode,
  );
}

extension DimensionsModelMapper on DimensionsModel {
  Dimensions toEntity() =>
      Dimensions(width: width, height: height, depth: depth);
}

extension ReviewModelMapper on ReviewModel {
  Review toEntity() => Review(
    rating: rating,
    comment: comment,
    date: date,
    reviewerName: reviewerName,
    reviewerEmail: reviewerEmail,
  );
}
