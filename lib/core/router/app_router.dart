import 'package:ecom_riverpod/core/navigation/app_navigation.dart';
import 'package:ecom_riverpod/features/home/presentation/page/home_page.dart';
import 'package:ecom_riverpod/core/router/route_names.dart';
import 'package:ecom_riverpod/core/router/route_paths.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RoutePaths.home,
  routes: [
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
              builder: (_, _) => HomePage(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.cart,
              name: RouteNames.cart,
              builder: (_, _) => HomePage(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.profile,
              name: RouteNames.profile,
              builder: (_, _) => HomePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
