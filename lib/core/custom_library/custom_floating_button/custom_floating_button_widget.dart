import 'package:flutter/material.dart';
import 'package:muslim_prime_ui/core/config/app_color.dart';

/// A customizable floating action button widget
///
/// This widget allows users to customize:
/// - Icon (default: add icon)
/// - Icon Color (default: app's primary color)
/// - Background Color (default: white)
class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
    this.onPressed,
    this.icon,
    this.iconColor,
    this.backgroundColor,
    this.elevation = 6.0,
    this.heroTag,
    this.tooltip,
    this.mini = false,
    this.borderRadius,
    this.shadowColor,
  });

  /// Callback function when button is pressed
  final VoidCallback? onPressed;

  /// Custom icon (default: Icons.add)
  final IconData? icon;

  /// Color of the icon (default: app's primary color)
  final Color? iconColor;

  /// Background color of the FAB (default: white)
  final Color? backgroundColor;

  /// Elevation of the FAB
  final double elevation;

  /// Hero tag for Hero animations
  final Object? heroTag;

  /// Tooltip text
  final String? tooltip;

  /// Whether to use mini FAB
  final bool mini;

  /// Border radius of the FAB
  final double? borderRadius;

  /// Shadow color of the FAB
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);

    Widget fab = FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor ?? Colors.white,
      elevation: elevation,
      heroTag: heroTag,
      tooltip: tooltip,
      mini: mini,
      shape: borderRadius != null
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius!),
            )
          : null,
      child: Icon(
        icon ?? Icons.add,
        color: iconColor ?? AppColor.primaryColorLight100,
      ),
    );

    if (shadowColor != null) {
      return Theme(
        data: Theme.of(context).copyWith(shadowColor: shadowColor),
        child: fab,
      );
    }

    return fab;
  }
}
