import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:ecom_riverpod/core/design_system/components/app_button.dart';
import 'package:ecom_riverpod/core/design_system/components/app_text_field.dart';
import 'package:ecom_riverpod/core/validators/input_validators.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
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
                    placeholder: 'Enter Email',
                    title: 'Email',
                    validator: InputValidators.email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  AppTextField(
                    placeholder: 'Enter Password',
                    title: 'Password',
                    validator: InputValidators.password,
                  ),
                ],
              ),

              AppButton(text: 'Sign In', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
