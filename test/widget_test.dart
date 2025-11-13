// lib/core/custom_library/custom_task_list/custom_task_card_widget.dart

import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
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
  final Color? iconBgColor;
  final Color? iconColor;
  final Color? iconBorderColor;
  final VoidCallback? onTap;
  final String? dateText;
  final String? timeText;
  final Widget? dateIcon;
  final Widget? timeIcon;
  final Color? infoSectionBackgroundColor;
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
    this.iconBgColor,
    this.iconColor,
    this.iconBorderColor,
    this.onTap,
    this.dateText,
    this.timeText,
    this.dateIcon,
    this.timeIcon,
    this.infoSectionBackgroundColor,
    this.infoTextStyle,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final contextColor = context.color;

    final defaultBorderRadius = borderRadius ??
        const BorderRadius.only(
          topLeft: Radius.circular(tenPx),
          bottomLeft: Radius.circular(tenPx),
          bottomRight: Radius.circular(tenPx),
        );

    final resolvedHeadingStyle = headingTextStyle ??
        theme.textTheme.bodyMedium?.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: contextColor.textPrimaryColor,
          decoration: isStrikethrough ? TextDecoration.lineThrough : TextDecoration.none,
          decorationThickness: isStrikethrough ? 2 : 0,
          decorationColor: contextColor.textSecondaryColor,
        );

    final resolvedBodyStyle = bodyTextStyle ??
        theme.textTheme.bodyMedium?.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: contextColor.textSecondaryColor,
          decoration: isStrikethrough ? TextDecoration.lineThrough : TextDecoration.none,
          decorationThickness: isStrikethrough ? 2 : 0,
          decorationColor: contextColor.textSecondaryColor,
        );
    
    final resolvedInfoTextStyle = infoTextStyle ??
        theme.textTheme.bodyMedium?.copyWith(
            fontSize: 12,
            color: contextColor.textSecondaryColor.withOpacity(0.7),
          );

    return InkWell(
      onTap: onTap,
      borderRadius: defaultBorderRadius,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Container(
          decoration: BoxDecoration(
            color: cardColor ?? contextColor.cardBgColor,
            borderRadius: defaultBorderRadius,
            boxShadow: [
              BoxShadow(
                color: contextColor.cardShadowColor.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 12, right: 4, top: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                headingText,
                                style: resolvedHeadingStyle,
                              ),
                            ),
                          ),
                          gapW8,
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isCompleted
                                  ? (iconBgColor ?? contextColor.primaryColor)
                                  : (iconBgColor ?? Colors.transparent),
                              border: Border.all(
                                color: iconBorderColor ?? contextColor.borderColor,
                                width: 1.5,
                              ),
                            ),
                            child: isCompleted
                                ? Icon(
                                    Icons.check,
                                    color: iconColor ?? contextColor.buttonTextColor,
                                    size: 18,
                                  )
                                : null,
                          ),
                        ],
                      ),
                      if (bodyText != null && bodyText!.isNotEmpty) ...[
                        gapH6,
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(
                            bodyText!,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: resolvedBodyStyle,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                if (dateText != null || timeText != null) ...[
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: infoSectionBackgroundColor ??
                            contextColor.backgroundColor,
                        borderRadius: radius8,
                      ),
                      child: Column(
                        children: [
                          if (dateText != null)
                            Row(
                              children: [
                                dateIcon ??
                                    Icon(
                                      Icons.calendar_today_outlined,
                                      size: 14,
                                      color: contextColor.textSecondaryColor
                                          .withOpacity(0.7),
                                    ),
                                gapW8,
                                Text(
                                  dateText!,
                                  style: resolvedInfoTextStyle,
                                ),
                              ],
                            ),
                          if (dateText != null && timeText != null) gapH8,
                          if (timeText != null)
                            Row(
                              children: [
                                timeIcon ??
                                    Icon(
                                      Icons.access_time_outlined,
                                      size: 14,
                                      color: contextColor.textSecondaryColor
                                          .withOpacity(0.7),
                                    ),
                                gapW8,
                                Text(
                                  timeText!,
                                  style: resolvedInfoTextStyle,
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}