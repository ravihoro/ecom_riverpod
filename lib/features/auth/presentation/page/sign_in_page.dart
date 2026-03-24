import 'dart:developer';

import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_button.dart';
import 'package:ecom_riverpod/core/design_system/components/app_text_field.dart';
import 'package:ecom_riverpod/core/validators/input_validators.dart';
import 'package:ecom_riverpod/features/auth/presentation/controller/auth_controller.dart';
import 'package:ecom_riverpod/features/auth/presentation/controller/sign_in_controller.dart';
import 'package:ecom_riverpod/features/auth/presentation/state/auth_state.dart';
import 'package:ecom_riverpod/features/auth/presentation/state/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  String username = '';
  String password = '';

  bool isFormValid = false;

  @override
  void dispose() {
    super.dispose();
  }

  void _onUsernameChanged(String value) {
    username = value;
    _validateForm();
  }

  void _onPasswordChanged(String value) {
    password = value;
    _validateForm();
  }

  void _validateForm() {
    final isValid =
        InputValidators.username(username) == null &&
        InputValidators.password(password) == null;

    if (isValid != isFormValid) {
      setState(() {
        isFormValid = isValid;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authControllerProvider, (previous, next) {
      if (next is Authenticated) {
        print('##### popping login page');
        log('##### popping login page');
        context.pop();
      }
    });

    ref.listen(signInControllerProvider, (prev, next) {
      if (next is SignInError) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(next.message)));
      }
    });

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: AppSpacing.lg,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Column(
                  spacing: AppSpacing.md,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppTextField(
                      fieldKey: const Key('usernameField'),
                      placeholder: 'Enter Username',
                      title: 'Username',
                      validator: InputValidators.username,
                      keyboardType: TextInputType.text,
                      onChanged: _onUsernameChanged,
                    ),
                    AppTextField(
                      fieldKey: const Key('passwordField'),
                      placeholder: 'Enter Password',
                      title: 'Password',
                      validator: InputValidators.password,
                      obscureText: true,
                      onChanged: _onPasswordChanged,
                    ),
                  ],
                ),
                Text('is form valid: $isFormValid'),
                Consumer(
                  builder: (context, ref, child) {
                    final state = ref.watch(signInControllerProvider);

                    return AppButton(
                      buttonKey: const Key('buttonKey'),
                      text: 'Sign In',
                      onPressed: () {
                        FocusManager.instance.primaryFocus?.unfocus();

                        ref
                            .read(signInControllerProvider.notifier)
                            .signIn(username, password);
                      },
                      isLoading: state is SignInLoading,
                      enabled: isFormValid,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
