import 'package:ecom_riverpod/core/design_system/app_sizes.dart';
import 'package:ecom_riverpod/core/design_system/components/app_page_indicator.dart';
import 'package:flutter/material.dart';

class AppImageCarousel extends StatefulWidget {
  final double? height;
  final double? width;
  final int itemCount;
  final NullableIndexedWidgetBuilder itemBuilder;

  const AppImageCarousel({
    super.key,
    this.height = 300,
    this.width = 200,
    required this.itemCount,
    required this.itemBuilder,
  });

  @override
  State<AppImageCarousel> createState() => _AppImageCarouselState();
}

class _AppImageCarouselState extends State<AppImageCarousel> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSizes.sm,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 300,
          child: PageView.builder(
            physics: const PageScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            scrollDirection: Axis.horizontal,
            itemCount: widget.itemCount,
            itemBuilder: widget.itemBuilder,
          ),
        ),
        if (widget.itemCount > 1)
          AppPageIndicator(
            currentIndex: currentIndex,
            length: widget.itemCount,
          ),
      ],
    );
  }
}
