import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';

sealed class ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsError extends ProductsState {
  final String error;

  ProductsError(this.error);
}

class ProductsData extends ProductsState {
  int skip;
  int total;
  List<Product> products;
  bool isLoadingMore;

  ProductsData(
    this.products,
    this.skip,
    this.total, {
    this.isLoadingMore = false,
  });

  ProductsData copyWith({
    int? skip,
    List<Product>? products,
    bool? isLoadingMore,
  }) {
    return ProductsData(
      products ?? this.products,
      skip ?? this.skip,
      total,
      isLoadingMore: isLoadingMore ?? false,
    );
  }
}
