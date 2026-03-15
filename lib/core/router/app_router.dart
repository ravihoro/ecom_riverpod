import 'package:ecom_riverpod/features/home/presentation/page/home_page.dart';
import 'package:ecom_riverpod/core/router/route_names.dart';
import 'package:ecom_riverpod/core/router/route_paths.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RoutePaths.home,
  routes: [
    GoRoute(
      path: RoutePaths.home,
      name: RouteNames.home,
      builder: (_, _) => HomePage(),
    ),
  ],
);
