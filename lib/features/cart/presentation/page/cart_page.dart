import 'package:ecom_riverpod/core/design_system/components/app_scaffold.dart';
import 'package:ecom_riverpod/core/router/route_paths.dart';
import 'package:ecom_riverpod/features/cart/presentation/components/cart_container.dart';
import 'package:ecom_riverpod/features/cart/presentation/components/empty_cart.dart';
import 'package:ecom_riverpod/features/cart/presentation/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartControllerProvider);

    final routerState = GoRouterState.of(context);

    final isFullScreen = routerState.uri.path == RoutePaths.cartFullScreen;

    Widget body;

    if (state.products.isEmpty) {
      body = EmptyCart();
    } else {
      body = CartContainer(cartState: state);
    }

    if (isFullScreen) {
      return AppScaffold(title: 'Cart', body: body);
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('Cart', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: body,
      );
    }
  }
}
