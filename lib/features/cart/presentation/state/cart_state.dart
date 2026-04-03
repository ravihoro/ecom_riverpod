import 'package:ecom_riverpod/features/products/domain/entities/products_entity.dart';

class CartState {
  final Map<Product, int> products;

  const CartState({this.products = const {}});

  int get totalQuantity => products.values.fold(0, (sum, qty) => sum + qty);

  double get subtotal {
    final rawSubtotal = products.entries.fold(
      0.0,
      (sum, entry) => sum + (entry.key.price * entry.value),
    );
    return double.parse(rawSubtotal.toStringAsFixed(2));
  }

  double get discount {
    final rawDiscount = subtotal * 0.1;
    return double.parse(rawDiscount.toStringAsFixed(2));
  }

  double get deliveryFee {
    final rawDelivery = subtotal * 0.05;
    return double.parse(rawDelivery.toStringAsFixed(2));
  }

  double get total {
    if (products.isEmpty) return 0.0;

    final calculatedTotal = subtotal - discount + deliveryFee;
    final guardedTotal = calculatedTotal < 0 ? 0.0 : calculatedTotal;

    return double.parse(guardedTotal.toStringAsFixed(2));
  }

  String get subtotalFormatted => subtotal.toStringAsFixed(2);

  String get discountFormatted => discount.toStringAsFixed(2);

  String get deliveryFeeFormatted => deliveryFee.toStringAsFixed(2);

  String get totalFormatted => total.toStringAsFixed(2);

  CartState copyWith({Map<Product, int>? products}) {
    return CartState(products: products ?? this.products);
  }
}
