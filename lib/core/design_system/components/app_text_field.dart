import 'package:ecom_riverpod/core/design_system/app_radius.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String? title;
  final String placeholder;
  final bool obscureText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextEditingController? controller;

  const AppTextField({
    super.key,
    this.title,
    this.obscureText = false,
    this.suffixIcon,
    required this.placeholder,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final outlineBorder = OutlineInputBorder(
      borderRadius: AppRadius.sm,
      borderSide: BorderSide.none,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSpacing.sm,
      children: [
        if (title != null)
          Text(
            title!,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: const TextStyle(color: Colors.black54),
            filled: true,
            fillColor: Colors.grey.shade200,
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: AppSpacing.md,
            ),
            border: outlineBorder,
            enabledBorder: outlineBorder,
            focusedBorder: outlineBorder,
          ),
        ),
      ],
    );
  }
}
