import 'package:ecom_riverpod/core/design_system/app_colors.dart';
import 'package:ecom_riverpod/core/design_system/components/app_text_field.dart';
import 'package:ecom_riverpod/core/validators/input_validators.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final Function(String)? onChanged;

  const PasswordTextField({super.key, required this.onChanged});

  @override
  State<PasswordTextField> createState() => PasswordTextFieldState();
}

class PasswordTextFieldState extends State<PasswordTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      fieldKey: const Key('passwordField'),
      placeholder: 'Enter Password',
      title: 'Password',
      validator: InputValidators.password,
      obscureText: obscureText,
      onChanged: widget.onChanged,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            obscureText = !obscureText; // 🔥 toggle state
          });
        },
        child: Icon(
          obscureText ? Icons.visibility : Icons.visibility_off,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
