import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecom_riverpod/core/design_system/app_radius.dart';
import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:flutter/material.dart';

class BannerCarousel extends StatelessWidget {
  final List<String> images;

  const BannerCarousel({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    final padding = AppSpacing.md;

    final width = MediaQuery.sizeOf(context).width * 0.9;

    return Column(
      spacing: AppSpacing.md,
      children: [
        SizedBox(
          height: 150,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: images.map((e) {
                int index = images.indexOf(e);

                final isFirst = index == 0;
                final isLast = index == 2;
                return Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(borderRadius: AppRadius.sm),
                  margin: isFirst
                      ? EdgeInsets.only(left: padding)
                      : isLast
                      ? EdgeInsets.only(right: padding)
                      : EdgeInsets.symmetric(horizontal: padding),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: e,
                    width: width,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
