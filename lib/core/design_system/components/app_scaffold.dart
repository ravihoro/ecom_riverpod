import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppScaffold extends StatelessWidget {
  final String? title;
  final Widget? header;
  final Widget body;
  final Color? backgroundColor;

  const AppScaffold({
    super.key,
    this.title,
    this.header,
    required this.body,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? Colors.grey.shade100;

    Widget? widget = (header != null)
        ? header
        : (title != null)
        ? Text(title!, style: TextStyle(color: Colors.black))
        : SizedBox.shrink();

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: AppSizes.md,
          ),
        ),
        backgroundColor: bgColor,
        title: widget,
        centerTitle: true,
      ),
      body: body,
    );
  }
}
