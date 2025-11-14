// File Name : lib\core\custom_library\custom_task_list\custom_task_card_widget.dart

import 'package:flutter/material.dart';
import 'package:muslim_prime_ui/core/config/app_color.dart';
import 'package:muslim_prime_ui/core/config/app_theme_color.dart';
import 'package:muslim_prime_ui/core/static/ui_const.dart';

class CustomTaskCard extends StatelessWidget {
  final Color? cardColor;
  final String headingText;
  final String? bodyText;
  final bool isCompleted;
  final bool isStrikethrough;
  final TextStyle? headingTextStyle;
  final TextStyle? bodyTextStyle;
  final VoidCallback? onTap;
  final VoidCallback? onToggle; // ✅ নতুন কলব্যাক যোগ করা হলো
  final String? dateText;
  final String? timeText;
  final Widget? dateIcon;
  final Widget? timeIcon;
  final TextStyle? infoTextStyle;
  final BorderRadius? borderRadius;

  const CustomTaskCard({
    super.key,
    required this.headingText,
    this.bodyText,
    this.cardColor,
    this.isCompleted = false,
    this.isStrikethrough = false,
    this.headingTextStyle,
    this.bodyTextStyle,
    this.onTap,
    this.onToggle, // ✅ কনস্ট্রাক্টর আপডেট
    this.dateText,
    this.timeText,
    this.dateIcon,
    this.timeIcon,
    this.infoTextStyle,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final contextColor = context.color;
    final isDark = context.isDarkMode;

    final defaultBorderRadius = borderRadius ?? radius10;

    // Define text styles based on theme
    final resolvedHeadingStyle =
        headingTextStyle ??
        theme.textTheme.bodyMedium?.copyWith(
          fontSize: eighteenPx, // 18.0
          fontWeight: FontWeight.w600,
          color: isDark ? AppColor.white : AppColor.textPrimaryColorLight,
          decoration: isStrikethrough ? TextDecoration.lineThrough : null,
          decorationColor: isStrikethrough
              ? (isDark ? AppColor.grey600 : AppColor.textSecondaryColorLight)
              : null,
          decorationThickness: 2.0,
        );

    final resolvedBodyStyle =
        bodyTextStyle ??
        theme.textTheme.bodySmall?.copyWith(
          fontSize: fourteenPx, // 14.0
          color: isStrikethrough
              ? (isDark ? AppColor.grey600 : AppColor.textSecondaryColorLight)
              : (isDark ? AppColor.grey300 : AppColor.textSecondaryColorLight),
          decoration: isStrikethrough ? TextDecoration.lineThrough : null,
          decorationColor: isStrikethrough
              ? (isDark ? AppColor.grey600 : AppColor.textSecondaryColorLight)
              : null,
          decorationThickness: 2.0,
        );

    final resolvedInfoTextStyle =
        infoTextStyle ??
        theme.textTheme.bodySmall?.copyWith(
          fontSize: twelvePx, // 12.0
          color: isDark
              ? AppColor.grey300.withOpacity(0.8)
              : AppColor.textSecondaryColorLight.withOpacity(0.8),
        );

    final infoSectionBgColor = isDark
        ? AppColor.taskCardInfoBgDark
        : AppColor.taskCardInfoBgLight;

    // ✅ CHECKBOX UI Logic
    const double checkboxSize = 32.0;
    const double checkIconSize = 18.0;
    const double borderWidth = 1.5;

    final Color checkboxBgColor = isCompleted
        ? AppColor
              .successColor // Completed: Green Background
        : (isDark
              ? AppColor.black54
              : AppColor.white); // Incomplete: White/Dark Grey Background

    final Color checkboxBorderColor = isCompleted
        ? AppColor
              .white // Completed: White Border
        : (isDark
              ? contextColor.borderColor.withOpacity(0.5)
              : AppColor.grey300); // Incomplete: Light Grey Border

    final Widget checkIcon = isCompleted
        ? const Icon(
            Icons.check,
            color: AppColor.white,
            size: checkIconSize,
          ) // Completed: White Check
        : const Icon(
            Icons.check,
            color: AppColor.grey300,
            size: checkIconSize,
          ); // ✅ Incomplete: Grey Check

    return InkWell(
      onTap: onTap,
      borderRadius: defaultBorderRadius,
      child: Container(
        margin: padding8,
        decoration: BoxDecoration(
          color: cardColor ?? contextColor.cardBgColor,
          borderRadius: defaultBorderRadius,
        ),
        child: Stack(
          children: [
            // MAIN CONTENT
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
                top: 12,
                bottom: 12,
                right: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    headingText,
                    style: resolvedHeadingStyle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  gapH8,

                  // Body Text
                  if (bodyText != null && bodyText!.isNotEmpty)
                    Text(
                      bodyText!,
                      style: resolvedBodyStyle,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),

                  Spacer(),

                  // Info Section
                  if (dateText != null || timeText != null)
                    Container(
                      padding: paddingH8V4,
                      decoration: BoxDecoration(
                        color: infoSectionBgColor,
                        borderRadius: radius8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (dateText != null)
                            Row(
                              children: [
                                dateIcon ??
                                    Icon(
                                      Icons.calendar_today_outlined,
                                      size: fourteenPx,
                                      color: resolvedInfoTextStyle?.color,
                                    ),
                                gapW8,
                                Text(dateText!, style: resolvedInfoTextStyle),
                              ],
                            ),
                          if (dateText != null && timeText != null) gapH4,
                          if (timeText != null)
                            Row(
                              children: [
                                timeIcon ??
                                    Icon(
                                      Icons.access_time_outlined,
                                      size: fourteenPx,
                                      color: resolvedInfoTextStyle?.color,
                                    ),
                                gapW8,
                                Text(timeText!, style: resolvedInfoTextStyle),
                              ],
                            ),
                        ],
                      ),
                    ),
                ],
              ),
            ),

            // ✅ CHECKBOX positioned at top-right
            Positioned(
              top: 0,
              right: 0,
              child: InkWell(
                onTap: onToggle, // ✅ onToggle কল করা হলো
                child: Container(
                  width: checkboxSize,
                  height: checkboxSize,
                  decoration: BoxDecoration(
                    color: checkboxBgColor,
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
                      // ছবির সাথে মিল রেখে
                      topLeft: Radius.circular(twentyPx),
                      bottomRight: Radius.circular(twentyPx),
                      bottomLeft: Radius.circular(twentyPx),
                    ),
                    border: Border.all(
                      color: checkboxBorderColor,
                      width: borderWidth,
                    ),
                  ),
                  child: Center(child: checkIcon),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
