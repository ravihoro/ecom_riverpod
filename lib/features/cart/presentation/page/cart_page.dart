import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/components/app_scaffold.dart';
import 'package:ecom_riverpod/core/router/route_paths.dart';
import 'package:ecom_riverpod/features/cart/presentation/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartControllerProvider);

    Widget body;

    if (state.products.isEmpty) {
      body = SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart_outlined,
              color: AppColors.primary,
              size: AppSizes.xxl,
            ),
            Text('Cart Empty'),
          ],
        ),
      );
    } else {
      body = Center(child: Text('Cart not empty'));
    }

    final routerState = GoRouterState.of(context);

    // 2. Check if the current path is the full-screen one
    final isFullScreen = routerState.uri.path == RoutePaths.cartFullScreen;

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
