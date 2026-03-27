import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_font_sizes.dart';
import 'package:ecom_riverpod/core/router/route_names.dart';
import 'package:ecom_riverpod/features/auth/presentation/controller/auth_controller.dart';
import 'package:ecom_riverpod/features/auth/presentation/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AppNavigation extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;

  AppNavigation({super.key, required this.navigationShell});

  void _onTap(int index, WidgetRef ref, BuildContext context) {
    final authState = ref.read(authControllerProvider);

    if (index == 3 && authState is UnAuthenticated) {
      context.pushNamed(RouteNames.login);
      return;
    }

    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  DateTime? lastPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopScope(
      canPop: navigationShell.currentIndex == 0,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;

        if (navigationShell.currentIndex != 0) {
          navigationShell.goBranch(0);
        } else {
          final now = DateTime.now();

          if (lastPressed == null ||
              now.difference(lastPressed!) < const Duration(seconds: 2)) {
            lastPressed = now;
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Press back again to exit')));
          } else {
            Navigator.of(context).pop();
          }
        }
      },
      child: Scaffold(
        body: navigationShell,
        bottomNavigationBar: Stack(
          children: [
            BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: navigationShell.currentIndex,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColors.primary,
              selectedFontSize: AppFontSizes.sm,
              unselectedFontSize: AppFontSizes.sm,
              unselectedItemColor: Colors.grey,
              onTap: (index) {
                _onTap(index, ref, context);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    navigationShell.currentIndex == 0
                        ? Icons.home
                        : Icons.home_outlined,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    navigationShell.currentIndex == 1
                        ? Icons.grid_view
                        : Icons.grid_view_outlined,
                  ),
                  label: 'Category',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    navigationShell.currentIndex == 2
                        ? Icons.shopping_cart
                        : Icons.shopping_cart_outlined,
                  ),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    navigationShell.currentIndex == 3
                        ? Icons.person
                        : Icons.person_outlined,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: AppColors.primary.shade50,
            ),
            AnimatedSelectedIndexIndicator(index: navigationShell.currentIndex),
          ],
        ),
      ),
    );
  }
}

class AnimatedSelectedIndexIndicator extends StatelessWidget {
  final int index;

  const AnimatedSelectedIndexIndicator({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width / 4;

    return AnimatedPositioned(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
      left: width * index,
      child: Container(width: width, height: 2, color: AppColors.primary),
    );
  }
}
