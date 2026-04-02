import 'package:ecom_riverpod/core/design_system/app_spacing.dart';
import 'package:flutter/material.dart';

class AppProductList extends StatefulWidget {
  final VoidCallback? loadMore;
  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;

  const AppProductList({
    super.key,
    this.loadMore,
    required this.itemCount,
    required this.itemBuilder,
  });

  @override
  State<AppProductList> createState() => _AppProductListState();
}

class _AppProductListState extends State<AppProductList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    if (widget.loadMore != null) {
      _scrollController.addListener(_onScroll);
    }
  }

  @override
  void dispose() {
    if (widget.loadMore != null) {
      _scrollController.removeListener(_onScroll);
    }
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final position = _scrollController.position;

    final scrollPercent = position.pixels / position.maxScrollExtent;

    if (scrollPercent >= 0.8) {
      widget.loadMore?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    final spacingWidth = (2 * AppSpacing.sm) + AppSpacing.md;
    final totalWidth = MediaQuery.sizeOf(context).width;

    final cardWidth = (totalWidth - spacingWidth) / 2;

    final remainingHeight = 40;

    final totalHeight = cardWidth + remainingHeight;

    return GridView.builder(
      controller: _scrollController,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppSpacing.md,
        crossAxisSpacing: AppSpacing.md,
        mainAxisExtent: totalHeight,
      ),
      itemCount: widget.itemCount,
      itemBuilder: widget.itemBuilder,
    );
  }
}
