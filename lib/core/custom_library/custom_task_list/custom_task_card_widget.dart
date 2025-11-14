// lib/core/custom_library/custom_task_list/custom_task_card_widget.dart

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
  final ValueChanged<bool>? onToggleCheckbox; // Added onToggleCheckbox callback
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
    this.onToggleCheckbox, // Added onToggleCheckbox parameter
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
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: isDark ? AppColor.white : AppColor.textPrimaryColorLight,
          decoration: isStrikethrough ? TextDecoration.lineThrough : null,
          decorationColor: isDark
              ? AppColor.grey600
              : AppColor.textSecondaryColorLight,
          decorationThickness: 2.0,
        );

    final resolvedBodyStyle =
        bodyTextStyle ??
        theme.textTheme.bodySmall?.copyWith(
          fontSize: 14,
          color: isDark ? AppColor.grey300 : AppColor.textSecondaryColorLight,
          decoration: isStrikethrough ? TextDecoration.lineThrough : null,
          decorationColor: isDark
              ? AppColor.grey600
              : AppColor.textSecondaryColorLight,
          decorationThickness: 2.0,
        );

    final resolvedInfoTextStyle =
        infoTextStyle ??
        theme.textTheme.bodySmall?.copyWith(
          fontSize: 12,
          color: isDark
              ? AppColor.grey300.withOpacity(0.8)
              : AppColor.textSecondaryColorLight.withOpacity(0.8),
        );

    final infoSectionBgColor = isDark
        ? AppColor.taskCardInfoBgDark
        : AppColor.taskCardInfoBgLight;

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
                right: 12, // give space for checkbox
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

                  const Spacer(),

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
                                      size: 14,
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
                                      size: 14,
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
                onTap: onToggleCheckbox != null
                    ? () => onToggleCheckbox!(!isCompleted)
                    : null,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: isCompleted
                        ? AppColor.successColor
                        : (isDark ? AppColor.black54 : AppColor.white),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(15),
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    border: isCompleted
                        ? Border.all(color: AppColor.white, width: 1.5)
                        : Border.all(
                            color: contextColor.borderColor.withOpacity(0.5),
                            width: 1.5,
                          ),
                  ),
                  child: isCompleted
                      ? const Icon(Icons.check, color: AppColor.white, size: 18)
                      : const Icon(
                          Icons.check,
                          color: AppColor.grey300,
                          size: 18,
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
