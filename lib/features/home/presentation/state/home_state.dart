import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';

class HomeState {
  final List<Product> laptops;
  final List<Product> womenBags;

  const HomeState({this.laptops = const [], this.womenBags = const []});

  HomeState copyWith({List<Product>? laptops, List<Product>? womenBags}) {
    return HomeState(
      laptops: laptops ?? this.laptops,
      womenBags: womenBags ?? this.womenBags,
    );
  }
}
