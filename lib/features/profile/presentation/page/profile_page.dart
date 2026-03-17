import 'package:ecom_riverpod/core/design_system/components/app_button.dart';
import 'package:ecom_riverpod/core/router/route_paths.dart';
import 'package:ecom_riverpod/features/auth/presentation/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authControllerProvider, (prev, next) {
      context.go(RoutePaths.home);
    });

    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: AppButton(
          text: 'Sign Out',
          enabled: true,
          onPressed: () {
            ref.read(authControllerProvider.notifier).signOut();
          },
        ),
      ),
    );
  }
}
