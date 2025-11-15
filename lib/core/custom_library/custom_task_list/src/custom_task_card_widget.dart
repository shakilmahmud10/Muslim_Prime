// File Name : lib\core\custom_library\custom_task_list\custom_task_card_widget.dart

import 'package:flutter/material.dart';
import 'package:muslim_prime_ui/core/config/app_color.dart';
import 'package:muslim_prime_ui/core/config/app_theme_color.dart';
import 'package:muslim_prime_ui/core/static/ui_const.dart';
import 'package:muslim_prime_ui/core/custom_library/custom_task_list/src/task_view_enums.dart'; // ✅ সঠিক ইমপোর্ট (task_view_mode.dart ধরে)

/// একক টাস্কের বিস্তারিত অংশ
class TaskDetails extends StatelessWidget {
  final String headingText;
  final String? bodyText;
  final bool isCompleted;
  final bool isStrikethrough;
  final Color? cardColor;
  final String? dateText;
  final String? timeText;
  final VoidCallback? onTap;
  final VoidCallback? onToggle;
  final TaskViewMode viewMode;

  const TaskDetails({
    super.key,
    required this.headingText,
    this.bodyText,
    this.isCompleted = false,
    this.isStrikethrough = false,
    this.cardColor,
    this.dateText,
    this.timeText,
    this.onTap,
    this.onToggle,
    this.viewMode = TaskViewMode.grid,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final contextColor = context.color;
    final isDark = context.isDarkMode;

    final defaultBorderRadius = radius10;

    // Determine styles based on isStrikethrough
    final Color textColor = isStrikethrough
        ? (isDark ? AppColor.grey600 : AppColor.textSecondaryColorLight)
        : (isDark ? AppColor.white : AppColor.textPrimaryColorLight);

    final TextDecoration textDecoration = isStrikethrough
        ? TextDecoration.lineThrough
        : TextDecoration.none;

    final resolvedHeadingStyle = theme.textTheme.bodyMedium?.copyWith(
      fontSize: eighteenPx,
      fontWeight: FontWeight.w600,
      color: textColor,
      decoration: textDecoration,
      decorationColor: textColor,
      decorationThickness: 2.0,
    );

    final resolvedBodyStyle = theme.textTheme.bodySmall?.copyWith(
      fontSize: fourteenPx,
      color: isStrikethrough
          ? textColor
          : (isDark ? AppColor.grey300 : AppColor.textSecondaryColorLight),
      decoration: textDecoration,
      decorationColor: textColor,
      decorationThickness: 2.0,
    );

    final resolvedInfoTextStyle = theme.textTheme.bodySmall?.copyWith(
      fontSize: twelvePx,
      color: isDark
          ? AppColor.grey300.withOpacity(0.8)
          : AppColor.textSecondaryColorLight.withOpacity(0.8),
    );

    final infoSectionBgColor = isDark
        ? AppColor.taskCardInfoBgDark
        : AppColor.taskCardInfoBgLight;

    // Checkbox UI Logic (unchanged from last step)
    const double checkboxSize = 32.0;
    const double checkIconSize = 18.0;
    const double borderWidth = 1.5;

    final Color checkboxBgColor = isCompleted
        ? AppColor.successColor
        : (isDark ? AppColor.black54 : AppColor.white);

    final Color checkboxBorderColor = isCompleted
        ? AppColor.white
        : (isDark
              ? contextColor.borderColor.withOpacity(0.5)
              : AppColor.grey300);

    final Widget checkIcon = isCompleted
        ? const Icon(Icons.check, color: AppColor.white, size: checkIconSize)
        : const Icon(Icons.check, color: AppColor.grey300, size: checkIconSize);

    // List View-এর জন্য ভিন্ন Padding
    final EdgeInsets cardMargin = viewMode == TaskViewMode.list
        ? paddingH8V4
        : padding8;

    // List View-এর জন্য ভিন্ন Inner Padding
    final EdgeInsets cardPadding = const EdgeInsets.all(12);

    // Info Section-এর লেআউট
    final Widget dateRow = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.calendar_today_outlined,
          size: fourteenPx,
          color: resolvedInfoTextStyle?.color,
        ),
        gapW8,
        Text(dateText!, style: resolvedInfoTextStyle),
      ],
    );

    final Widget timeRow = Row(
      children: [
        Icon(
          Icons.access_time_outlined,
          size: fourteenPx,
          color: resolvedInfoTextStyle?.color,
        ),
        gapW8,
        Text(timeText!, style: resolvedInfoTextStyle),
      ],
    );

    final Widget infoSectionContent;

    if (viewMode == TaskViewMode.grid) {
      // Grid View-এর জন্য Column স্ট্রাকচার
      infoSectionContent = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (dateText != null) dateRow,
          if (dateText != null && timeText != null)
            gapH4, // Column-এর মধ্যে উল্লম্ব গ্যাপ
          if (timeText != null) timeRow,
        ],
      );
    } else {
      // List View-এর জন্য Row স্ট্রাকচার
      infoSectionContent = Row(
        children: [
          if (dateText != null) dateRow,
          if (dateText != null && timeText != null) gapW20,
          if (timeText != null) timeRow,
        ],
      );
    }

    // Body Text উইজেট
    final Widget bodyTextWidget = Text(
      bodyText!,
      style: resolvedBodyStyle,
      // maxLines: viewMode == TaskViewMode.list ? 3 : 5,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );

    return InkWell(
      onTap: onTap,
      borderRadius: defaultBorderRadius,
      child: Container(
        margin: cardMargin,
        decoration: BoxDecoration(
          color: cardColor ?? contextColor.cardBgColor,
          borderRadius: defaultBorderRadius,
        ),
        child: Stack(
          children: [
            // MAIN CONTENT
            Padding(
              padding: cardPadding,
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

                  // Body Text - ✅ List/Grid অনুযায়ী Expanded/সাধারণ Text ব্যবহার
                  if (bodyText != null && bodyText!.isNotEmpty)
                    viewMode == TaskViewMode.grid
                        ? Expanded(
                            // ✅ Grid View-এর জন্য Expanded
                            child: bodyTextWidget,
                          )
                        : Padding(
                            // ✅ List View-এর জন্য সাধারণ Padding
                            padding: const EdgeInsets.only(
                              bottom: eightPx,
                            ), // নিচের দিকে সামান্য গ্যাপ
                            child: bodyTextWidget,
                          ),

                  // Info Section
                  if (dateText != null || timeText != null)
                    Container(
                      padding: paddingH8V4,
                      decoration: BoxDecoration(
                        color: infoSectionBgColor,
                        borderRadius: radius8,
                      ),
                      child: infoSectionContent,
                    ),
                ],
              ),
            ),

            // ✅ CHECKBOX positioned at top-right
            Positioned(
              top: 0,
              right: 0,
              child: InkWell(
                onTap: onToggle,
                child: Container(
                  width: checkboxSize,
                  height: checkboxSize,
                  decoration: BoxDecoration(
                    color: checkboxBgColor,
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
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

/// টাস্ক কার্ডের হেডার অংশ (ভিউ মোড পরিচালনার জন্য)
class TaskHeader {
  final String headline;
  final bool isGridView;

  TaskHeader({required this.headline, this.isGridView = true});
}

/// TaskHeader এবং TaskDetails-কে একত্রিত করে একটি সিঙ্গেল কম্পোনেন্ট তৈরি করা হলো
class CustomTaskCard extends StatelessWidget {
  final TaskHeader header;
  final TaskDetails details;

  const CustomTaskCard({
    super.key,
    required this.header,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    // ✅ CustomTaskCard এখন সরাসরি TaskDetails রিটার্ন করবে,
    // যাতে GridView/ListView-এর constraints-এ সমস্যা না হয়।
    return TaskDetails(
      headingText: details.headingText,
      bodyText: details.bodyText,
      isCompleted: details.isCompleted,
      isStrikethrough: details.isStrikethrough,
      cardColor: details.cardColor,
      dateText: details.dateText,
      timeText: details.timeText,
      onTap: details.onTap,
      onToggle: details.onToggle,
      viewMode: header.isGridView ? TaskViewMode.grid : TaskViewMode.list,
    );
  }
}
