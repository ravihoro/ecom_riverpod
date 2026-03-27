import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/app_font_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_button.dart';
import 'package:ecom_riverpod/core/router/route_paths.dart';
import 'package:ecom_riverpod/features/auth/presentation/controller/auth_controller.dart';
import 'package:ecom_riverpod/features/auth/presentation/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileItems = [
      ProfileData(title: 'Your Profile', icon: Icons.person),
      ProfileData(title: 'Manage Address', icon: Icons.location_pin),
      ProfileData(title: 'Payment Methods', icon: Icons.payment),
      ProfileData(title: 'My Orders', icon: Icons.local_shipping),
      ProfileData(title: 'My Coupons', icon: Icons.confirmation_num),
      ProfileData(title: 'My Wallet', icon: Icons.wallet),
      ProfileData(title: 'Settings', icon: Icons.settings),
      ProfileData(title: 'Help Center', icon: Icons.help),
      ProfileData(
        title: 'Sign Out',
        icon: Icons.logout,
        onTap: () {
          ref.read(authControllerProvider.notifier).signOut();
        },
      ),
    ];

    ref.listen(authControllerProvider, (prev, next) {
      context.go(RoutePaths.home);
    });

    final state = ref.watch(authControllerProvider);

    switch (state) {
      case Authenticated():
        final user = state.user;

        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text('Profile', style: TextStyle(color: Colors.black)),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: AppSpacing.sm,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    fit: BoxFit.cover,
                    placeholder: (context, url) => SizedBox(
                      height: 50,
                      width: 50,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),

                Text(
                  '${user.firstName} ${user.lastName}',
                  style: TextStyle(
                    fontSize: AppFontSizes.lg,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Flexible(
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: profileItems.length,
                    itemBuilder: (context, index) {
                      final item = profileItems[index];
                      return ListTile(
                        leading: Icon(item.icon, color: AppColors.primary),
                        title: Text(item.title),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.primary,
                          size: AppSizes.md,
                        ),
                        onTap: item.onTap,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.md,
                        ),
                        child: Divider(height: 1, color: Colors.grey.shade200),
                      );
                    },
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(
                //     horizontal: AppSpacing.md,
                //   ),
                //   child: AppButton(
                //     text: 'Sign Out',
                //     enabled: true,
                //     onPressed: () {
                //       ref.read(authControllerProvider.notifier).signOut();
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        );
      case UnAuthenticated():
        return Center(child: Text("Error"));
      default:
        return Center(child: CircularProgressIndicator());
    }
  }
}

class ProfileData {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  ProfileData({required this.title, required this.icon, this.onTap});
}
