import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigation extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const AppNavigation({super.key, required this.navigationShell});

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: navigationShell.currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primary,

            unselectedItemColor: Colors.grey,
            onTap: _onTap,
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
