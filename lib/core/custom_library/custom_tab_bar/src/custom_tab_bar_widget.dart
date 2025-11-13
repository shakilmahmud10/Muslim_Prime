import 'package:flutter/material.dart';
import 'package:muslim_prime_ui/core/config/app_color.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.tabs,
    required this.tabController,
    this.onTap,
    this.height = 50,
    this.borderRadius = 30,
    this.indicatorBorderRadius = 27,
    this.border,
    this.indicatorPadding = const EdgeInsets.all(5),
    this.labelPadding = const EdgeInsets.only(top: 3),
    this.selectedFontSize = 13,
    this.unselectedFontSize = 13,
    this.selectedFontWeight = FontWeight.w600,
    this.unselectedFontWeight = FontWeight.w500,
    this.backgroundColor,
    this.selectedColor,
    this.unselectedLabelColor,
    this.labelColor,
    this.indicatorAnimation = TabIndicatorAnimation.elastic,
    this.physics,
  });

  final List<Widget> tabs;
  final TabController tabController;
  final void Function(int)? onTap;

  final double height;
  final double borderRadius;
  final double indicatorBorderRadius;
  final EdgeInsetsGeometry indicatorPadding;
  final EdgeInsetsGeometry labelPadding;
  final double selectedFontSize;
  final double unselectedFontSize;
  final FontWeight selectedFontWeight;
  final FontWeight unselectedFontWeight;
  final Color? backgroundColor;
  final Color? selectedColor;
  final Color? unselectedLabelColor;
  final Color? labelColor;
  final TabIndicatorAnimation indicatorAnimation;
  final ScrollPhysics? physics;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // final themeColor = context.color;
    final screenWidth = MediaQuery.of(context).size.width;

    // // Use theme colors as defaults
    final resolvedBackgroundColor =
        backgroundColor ?? AppColor.primaryColorLight10;
    final resolvedSelectedColor = selectedColor ?? AppColor.primaryColorLight100;
    final resolvedUnselectedLabelColor =
        unselectedLabelColor ?? AppColor.primaryColorLight10;
    final resolvedLabelColor = labelColor ?? AppColor.textPrimaryColorLight;

    return Container(
      height: height,
      width: screenWidth,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(borderRadius),
        border: border ?? Border(),
      ),
      child: tabController.length > 0
          ? TabBar(
              dividerColor: Colors.transparent,
              indicatorAnimation: indicatorAnimation,
              onTap: onTap,
              splashFactory: NoSplash.splashFactory,
              indicatorPadding: indicatorPadding,
              indicator: BoxDecoration(
                color: resolvedSelectedColor,
                borderRadius: BorderRadius.circular(indicatorBorderRadius),
              ),
              unselectedLabelColor: resolvedUnselectedLabelColor,
              labelColor: resolvedLabelColor,
              indicatorColor: theme.appBarTheme.backgroundColor,
              unselectedLabelStyle: theme.textTheme.titleSmall?.copyWith(
                fontWeight: unselectedFontWeight,
                fontSize: unselectedFontSize,
              ),
              labelStyle: theme.textTheme.titleMedium?.copyWith(
                fontWeight: selectedFontWeight,
                fontSize: selectedFontSize,
              ),
              labelPadding: labelPadding,
              tabs: tabs,
              controller: tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              physics: physics ?? const ClampingScrollPhysics(),
            )
          : const SizedBox.shrink(),
    );
  }
}
