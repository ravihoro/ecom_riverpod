import 'package:ecom_riverpod/features/category/domain/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String slug,
    required String name,
    required String url,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

extension CategoryModelMapper on CategoryModel {
  Category toEntity() {
    return Category(slub: slug, name: name, url: url);
  }
}
