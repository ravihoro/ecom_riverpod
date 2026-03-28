import 'package:ecom_riverpod/features/products/presentation/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetailPage extends ConsumerWidget {
  final int id;

  const ProductDetailPage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productControllerProvider(id));

    return state.when(
      error: (err, stack) => Center(child: Text('Error: $err')),
      loading: () => Center(child: CircularProgressIndicator()),
      data: (product) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(product.title, style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
      ),
    );
  }
}
