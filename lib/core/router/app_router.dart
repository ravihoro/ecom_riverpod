import 'package:ecom_riverpod/core/navigation/app_navigation.dart';
import 'package:ecom_riverpod/features/auth/presentation/page/sign_in_page.dart';
import 'package:ecom_riverpod/features/cart/presentation/page/cart_page.dart';
import 'package:ecom_riverpod/features/category/presentation/page/category_page.dart';
import 'package:ecom_riverpod/features/home/presentation/page/home_page.dart';
import 'package:ecom_riverpod/core/router/route_names.dart';
import 'package:ecom_riverpod/core/router/route_paths.dart';
import 'package:ecom_riverpod/features/products/presentation/page/product_list.dart';
import 'package:ecom_riverpod/features/profile/presentation/page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: RoutePaths.home,
  routes: [
    GoRoute(
      path: RoutePaths.login,
      name: RouteNames.login,
      builder: (_, _) => SignInPage(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (_, state, navigationShell) {
        return AppNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.home,
              name: RouteNames.home,
              builder: (_, _) => HomePage(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.category,
              name: RouteNames.category,
              builder: (_, _) => CategoryPage(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.cart,
              name: RouteNames.cart,
              builder: (_, _) => CartPage(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.profile,
              name: RouteNames.profile,
              builder: (_, _) => ProfilePage(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: RoutePaths.productList,
      name: RouteNames.productList,
      builder: (_, state) {
        final category = state.pathParameters['category'];

        if (category == null) {
          return Scaffold(body: Center(child: Text('Error')));
        }

        return ProductList(category: category);
      },
    ),
  ],
);
