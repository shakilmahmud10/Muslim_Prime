import 'package:flutter/material.dart';
import 'package:muslim_prime_ui/core/static/ui_const.dart';

/// A customizable submit button widget with optional icon
class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.title,
    this.onTap,
    this.buttonColor,
    this.textColor,
    this.svgPicture,
    this.buttonHeight,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.customTextStyle,
    this.borderRadius,
    this.enabled = true,
  });

  final String title;
  final VoidCallback? onTap;
  final Color? buttonColor;
  final Color? textColor;
  final Widget? svgPicture;
  final double? buttonHeight;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextStyle? customTextStyle;
  final double? borderRadius;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultTextStyle = theme.textTheme.labelLarge?.copyWith(
      color: textColor ?? Colors.white,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: fontFamily,
    );

    return SizedBox(
      height: buttonHeight ?? 48,
      width: double.infinity,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: enabled ? onTap : null,
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
          child: Ink(
            decoration: BoxDecoration(
              color: enabled
                  ? (buttonColor ?? Theme.of(context).primaryColor)
                  : Colors.grey.shade300,
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (svgPicture != null) ...[svgPicture!, gapW8],
                  Text(title, style: customTextStyle ?? defaultTextStyle),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
