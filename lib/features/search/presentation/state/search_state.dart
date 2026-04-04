import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';

class SearchPageState {
  final String query;
  final SearchState status;

  SearchPageState({this.query = '', required this.status});

  SearchPageState copyWith({String? query, SearchState? status}) {
    return SearchPageState(
      query: query ?? this.query,
      status: status ?? this.status,
    );
  }
}

sealed class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchError extends SearchState {
  final String error;

  SearchError(this.error);
}

class SearchData extends SearchState {
  int skip;
  int total;
  List<Product> products;
  bool isLoadingMore;

  SearchData(
    this.products,
    this.total,
    this.skip, {
    this.isLoadingMore = false,
  });

  SearchData copyWith({
    int? skip,
    List<Product>? products,
    bool? isLoadingMore,
  }) {
    return SearchData(
      products ?? this.products,
      skip ?? this.skip,
      total,
      isLoadingMore: isLoadingMore ?? false,
    );
  }
}
