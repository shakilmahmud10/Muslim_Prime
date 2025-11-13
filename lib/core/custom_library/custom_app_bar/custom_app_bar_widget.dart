import 'package:muslim_prime_ui/core/static/ui_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.subTitle,
    this.isRoot = false,
    this.dropDownPath,
    this.actions,
    this.onTap,
    this.backgroundColor,
    this.leading,
    this.centerTitle,
    this.bottom,
    this.titleSpacing,
    this.backIconSize = 20,
    this.backIconColor,
    this.titleStyle,
    this.dropDownIconColor,
    this.dropDownIconSize = 30,
    this.subTitleStyle,
    this.toolbarHeight,
  });

  final String title;
  final bool isRoot;
  final IconData? dropDownPath;
  final List<Widget>? actions;
  final void Function()? onTap;
  final String? subTitle;
  final Color? backgroundColor;
  final Widget? leading;
  final bool? centerTitle;
  final PreferredSizeWidget? bottom;

  final double? titleSpacing;
  final double backIconSize;
  final Color? backIconColor;
  final TextStyle? titleStyle;
  final Color? dropDownIconColor;
  final double dropDownIconSize;
  final TextStyle? subTitleStyle;
  final double? toolbarHeight;

  @override
  Size get preferredSize =>
      Size.fromHeight(toolbarHeight ?? kToolbarHeight + 5);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // final contextColor = context.color;
    // final resolvedBackgroundColor = backgroundColor ?? contextColor.cardBgColor;

    // final overlayBrightness = ThemeData.estimateBrightnessForColor(
    //   resolvedBackgroundColor,
    // );

    // final SystemUiOverlayStyle resolvedOverlayStyle =
    //     (overlayBrightness == Brightness.dark
    //             ? SystemUiOverlayStyle.light
    //             : SystemUiOverlayStyle.dark)
    //         .copyWith(statusBarColor: resolvedBackgroundColor);

    return AppBar(
      centerTitle: centerTitle,
      backgroundColor: Colors.white,
      // backgroundColor: resolvedBackgroundColor,
      titleSpacing: titleSpacing ?? (isRoot ? 18 : 0),
      toolbarHeight: toolbarHeight,
      // systemOverlayStyle: resolvedOverlayStyle,
      shape: Border(
        bottom: BorderSide(color: theme.primaryColor.withValues(alpha: 0.1)),
      ),
      leading:
          leading ??
          (isRoot
              ? null
              : IconButton(
                  padding: EdgeInsets.zero,
                  // onPressed: () => context.navigatorPop(),
                  // onPressed: () => context.navigatorPop(),
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: backIconSize,
                    color: backIconColor,
                  ),
                )),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                LimitedBox(
                  maxWidth: MediaQuery.of(context).size.width * 0.58,
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style:
                        titleStyle ??
                        theme.textTheme.titleMedium?.copyWith(
                          fontSize: eighteenPx,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                if (dropDownPath != null) ...[
                  gapW8,
                  Icon(
                    dropDownPath!,
                    size: dropDownIconSize,
                    color: dropDownIconColor,
                  ),
                ],
              ],
            ),
          ),
          if (subTitle != null && subTitle!.isNotEmpty) ...[
            gapH3,
            Text(
              subTitle!,
              style:
                  subTitleStyle ??
                  theme.textTheme.labelSmall!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ],
        ],
      ),
      actions: actions,
      bottom: bottom,
    );
  }
}
