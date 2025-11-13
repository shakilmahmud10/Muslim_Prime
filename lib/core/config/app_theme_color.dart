import 'package:flutter/material.dart';
import 'package:muslim_prime_ui/core/config/app_color.dart';

/// Theme color extension to access colors based on current theme.
/// Provides all color shades and semantic color properties for theming.
class AppThemeColor extends ThemeExtension<AppThemeColor> {
  // All 12 primary color shades
  final Color primaryColor1;
  final Color primaryColor5;
  final Color primaryColor10;
  final Color primaryColor20;
  final Color primaryColor30;
  final Color primaryColor40;
  final Color primaryColor50;
  final Color primaryColor60;
  final Color primaryColor70;
  final Color primaryColor80;
  final Color primaryColor90;
  final Color primaryColor100;

  // Background and surface colors
  final Color backgroundColor;
  final Color iconShadeColor;
  final Color shadeColor;
  final Color cardColor;

  // Button colors
  final Color primaryButtonColor;
  final Color buttonTextColor;

  // Text colors
  final Color subTitleColor;
  final Color titleColor;
  final Color textPrimaryColor;
  final Color textSecondaryColor;

  // Border and navigation colors
  final Color borderColor;
  final Color navbarBg;

  // Secondary and section colors
  final Color secondaryColor;
  final Color sectionTitleColor;
  final Color logoTextColor;

  // Incomplete/Completed state colors
  final Color incompleteButtonBgColor;
  final Color completedButtonBgColor;
  final Color incompleteIconColor;
  final Color completedIconColor;
  final Color completedTextColor;

  // Card colors
  final Color cardBgColor;
  final Color cardShadowColor;

  // Grey shades
  final Color grey100;
  final Color grey300;
  final Color grey600;

  // Hadith grade colors
  final Color hadithSahihColor;
  final Color hadithHasanColor;
  final Color hadithDaifColor;
  final Color hadithUnknownColor;

  // Hadith grade colors - Darker variants for better contrast
  final Color hadithSahihColorDark;
  final Color hadithHasanColorDark;
  final Color hadithDaifColorDark;

  // Text colors
  final Color darkTextColor;
  final Color mutedTextColor;

  // Overlay colors
  final Color overlayDark;
  final Color overlayLight;
  final Color dialogBarrierColor;

  // Alias for surface color
  Color get surfaceColor => cardColor;

  // Alias for primary color
  Color get primaryColor => primaryColor100;

  const AppThemeColor({
    required this.primaryColor1,
    required this.primaryColor5,
    required this.primaryColor10,
    required this.primaryColor20,
    required this.primaryColor30,
    required this.primaryColor40,
    required this.primaryColor50,
    required this.primaryColor60,
    required this.primaryColor70,
    required this.primaryColor80,
    required this.primaryColor90,
    required this.primaryColor100,
    required this.backgroundColor,
    required this.iconShadeColor,
    required this.shadeColor,
    required this.cardColor,
    required this.primaryButtonColor,
    required this.buttonTextColor,
    required this.subTitleColor,
    required this.titleColor,
    required this.textPrimaryColor,
    required this.textSecondaryColor,
    required this.borderColor,
    required this.navbarBg,
    required this.secondaryColor,
    required this.sectionTitleColor,
    required this.logoTextColor,
    required this.incompleteButtonBgColor,
    required this.completedButtonBgColor,
    required this.incompleteIconColor,
    required this.completedIconColor,
    required this.completedTextColor,
    required this.cardBgColor,
    required this.cardShadowColor,
    required this.grey100,
    required this.grey300,
    required this.grey600,
    required this.hadithSahihColor,
    required this.hadithHasanColor,
    required this.hadithDaifColor,
    required this.hadithUnknownColor,
    required this.hadithSahihColorDark,
    required this.hadithHasanColorDark,
    required this.hadithDaifColorDark,
    required this.darkTextColor,
    required this.mutedTextColor,
    required this.overlayDark,
    required this.overlayLight,
    required this.dialogBarrierColor,
  });

  static const light = AppThemeColor(
    primaryColor1: AppColor.primaryColorLight01,
    primaryColor5: AppColor.primaryColorLight05,
    primaryColor10: AppColor.primaryColorLight10,
    primaryColor20: AppColor.primaryColorLight20,
    primaryColor30: AppColor.primaryColorLight30,
    primaryColor40: AppColor.primaryColorLight40,
    primaryColor50: AppColor.primaryColorLight50,
    primaryColor60: AppColor.primaryColorLight60,
    primaryColor70: AppColor.primaryColorLight70,
    primaryColor80: AppColor.primaryColorLight80,
    primaryColor90: AppColor.primaryColorLight90,
    primaryColor100: AppColor.primaryColorLight100,
    backgroundColor: AppColor.backgroundColorLight,
    iconShadeColor: AppColor.iconShadeColorLight,
    shadeColor: AppColor.shadeColorLight,
    cardColor: Colors.white,
    primaryButtonColor: AppColor.primaryButtonColorLight,
    buttonTextColor: AppColor.buttonTextColorLight,
    subTitleColor: AppColor.subTitleColorLight,
    titleColor: AppColor.titleColorLight,
    textPrimaryColor: AppColor.textPrimaryColorLight,
    textSecondaryColor: AppColor.textSecondaryColorLight,
    borderColor: AppColor.primaryColorLight20,
    navbarBg: AppColor.navbarBgLight,
    secondaryColor: AppColor.secondaryColorLight,
    sectionTitleColor: AppColor.sectionTitleColorLight,
    logoTextColor: AppColor.logoTextColorLight,
    incompleteButtonBgColor: AppColor.incompleteButtonBgColorLight,
    completedButtonBgColor: AppColor.completedButtonBgColorLight,
    incompleteIconColor: AppColor.incompleteIconColorLight,
    completedIconColor: AppColor.completedIconColorLight,
    completedTextColor: AppColor.completedTextColorLight,
    cardBgColor: AppColor.cardBgColorLight,
    cardShadowColor: AppColor.cardShadowColorLight,
    grey100: AppColor.grey100,
    grey300: AppColor.grey300,
    grey600: AppColor.grey600,
    hadithSahihColor: AppColor.hadithSahihColor,
    hadithHasanColor: AppColor.hadithHasanColor,
    hadithDaifColor: AppColor.hadithDaifColor,
    hadithUnknownColor: AppColor.hadithUnknownColor,
    hadithSahihColorDark: AppColor.hadithSahihColorDark,
    hadithHasanColorDark: AppColor.hadithHasanColorDark,
    hadithDaifColorDark: AppColor.hadithDaifColorDark,
    darkTextColor: AppColor.darkTextColor,
    mutedTextColor: AppColor.mutedTextColor,
    overlayDark: AppColor.overlayDark,
    overlayLight: AppColor.overlayLight,
    dialogBarrierColor: AppColor.dialogBarrierColor,
  );

  static const dark = AppThemeColor(
    primaryColor1: AppColor.primaryColorDark01,
    primaryColor5: AppColor.primaryColorDark05,
    primaryColor10: AppColor.primaryColorDark10,
    primaryColor20: AppColor.primaryColorDark20,
    primaryColor30: AppColor.primaryColorDark30,
    primaryColor40: AppColor.primaryColorDark40,
    primaryColor50: AppColor.primaryColorDark50,
    primaryColor60: AppColor.primaryColorDark60,
    primaryColor70: AppColor.primaryColorDark70,
    primaryColor80: AppColor.primaryColorDark80,
    primaryColor90: AppColor.primaryColorDark90,
    primaryColor100: AppColor.primaryColorDark100,
    backgroundColor: AppColor.backgroundColorDark,
    iconShadeColor: AppColor.iconShadeColorDark,
    shadeColor: AppColor.shadeColorDark,
    cardColor: AppColor.shadeColorDark,
    primaryButtonColor: AppColor.primaryButtonColorDark,
    buttonTextColor: AppColor.buttonTextColorDark,
    subTitleColor: AppColor.subTitleColorDark,
    titleColor: AppColor.titleColorDark,
    textPrimaryColor: AppColor.textPrimaryColorDark,
    textSecondaryColor: AppColor.textSecondaryColorDark,
    borderColor: AppColor.primaryColorLight50,
    navbarBg: AppColor.navbarBgDark,
    secondaryColor: AppColor.secondaryColorDark,
    sectionTitleColor: AppColor.sectionTitleColorDark,
    logoTextColor: AppColor.logoTextColorDark,
    incompleteButtonBgColor: AppColor.incompleteButtonBgColorDark,
    completedButtonBgColor: AppColor.completedButtonBgColorDark,
    incompleteIconColor: AppColor.incompleteIconColorDark,
    completedIconColor: AppColor.completedIconColorDark,
    completedTextColor: AppColor.completedTextColorDark,
    cardBgColor: AppColor.cardBgColorDark,
    cardShadowColor: AppColor.cardShadowColorDark,
    grey100: AppColor.grey100,
    grey300: AppColor.grey300,
    grey600: AppColor.grey600,
    hadithSahihColor: AppColor.hadithSahihColor,
    hadithHasanColor: AppColor.hadithHasanColor,
    hadithDaifColor: AppColor.hadithDaifColor,
    hadithUnknownColor: AppColor.hadithUnknownColor,
    hadithSahihColorDark: AppColor.hadithSahihColorDark,
    hadithHasanColorDark: AppColor.hadithHasanColorDark,
    hadithDaifColorDark: AppColor.hadithDaifColorDark,
    darkTextColor: AppColor.darkTextColor,
    mutedTextColor: AppColor.mutedTextColor,
    overlayDark: AppColor.overlayDark,
    overlayLight: AppColor.overlayLight,
    dialogBarrierColor: AppColor.dialogBarrierColor,
  );

  @override
  ThemeExtension<AppThemeColor> copyWith({
    Color? primaryColor1,
    Color? primaryColor5,
    Color? primaryColor10,
    Color? primaryColor20,
    Color? primaryColor30,
    Color? primaryColor40,
    Color? primaryColor50,
    Color? primaryColor60,
    Color? primaryColor70,
    Color? primaryColor80,
    Color? primaryColor90,
    Color? primaryColor100,
    Color? backgroundColor,
    Color? iconShadeColor,
    Color? shadeColor,
    Color? cardColor,
    Color? primaryButtonColor,
    Color? buttonTextColor,
    Color? subTitleColor,
    Color? titleColor,
    Color? textPrimaryColor,
    Color? textSecondaryColor,
    Color? borderColor,
    Color? navbarBg,
    Color? secondaryColor,
    Color? sectionTitleColor,
    Color? logoTextColor,
    Color? incompleteButtonBgColor,
    Color? completedButtonBgColor,
    Color? incompleteIconColor,
    Color? completedIconColor,
    Color? completedTextColor,
    Color? cardBgColor,
    Color? cardShadowColor,
    Color? grey100,
    Color? grey300,
    Color? grey600,
    Color? hadithSahihColor,
    Color? hadithHasanColor,
    Color? hadithDaifColor,
    Color? hadithUnknownColor,
    Color? hadithSahihColorDark,
    Color? hadithHasanColorDark,
    Color? hadithDaifColorDark,
    Color? darkTextColor,
    Color? mutedTextColor,
    Color? overlayDark,
    Color? overlayLight,
    Color? dialogBarrierColor,
  }) {
    return AppThemeColor(
      primaryColor1: primaryColor1 ?? this.primaryColor1,
      primaryColor5: primaryColor5 ?? this.primaryColor5,
      primaryColor10: primaryColor10 ?? this.primaryColor10,
      primaryColor20: primaryColor20 ?? this.primaryColor20,
      primaryColor30: primaryColor30 ?? this.primaryColor30,
      primaryColor40: primaryColor40 ?? this.primaryColor40,
      primaryColor50: primaryColor50 ?? this.primaryColor50,
      primaryColor60: primaryColor60 ?? this.primaryColor60,
      primaryColor70: primaryColor70 ?? this.primaryColor70,
      primaryColor80: primaryColor80 ?? this.primaryColor80,
      primaryColor90: primaryColor90 ?? this.primaryColor90,
      primaryColor100: primaryColor100 ?? this.primaryColor100,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      iconShadeColor: iconShadeColor ?? this.iconShadeColor,
      shadeColor: shadeColor ?? this.shadeColor,
      cardColor: cardColor ?? this.cardColor,
      primaryButtonColor: primaryButtonColor ?? this.primaryButtonColor,
      buttonTextColor: buttonTextColor ?? this.buttonTextColor,
      subTitleColor: subTitleColor ?? this.subTitleColor,
      titleColor: titleColor ?? this.titleColor,
      textPrimaryColor: textPrimaryColor ?? this.textPrimaryColor,
      textSecondaryColor: textSecondaryColor ?? this.textSecondaryColor,
      borderColor: borderColor ?? this.borderColor,
      navbarBg: navbarBg ?? this.navbarBg,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      sectionTitleColor: sectionTitleColor ?? this.sectionTitleColor,
      logoTextColor: logoTextColor ?? this.logoTextColor,
      incompleteButtonBgColor:
          incompleteButtonBgColor ?? this.incompleteButtonBgColor,
      completedButtonBgColor:
          completedButtonBgColor ?? this.completedButtonBgColor,
      incompleteIconColor: incompleteIconColor ?? this.incompleteIconColor,
      completedIconColor: completedIconColor ?? this.completedIconColor,
      completedTextColor: completedTextColor ?? this.completedTextColor,
      cardBgColor: cardBgColor ?? this.cardBgColor,
      cardShadowColor: cardShadowColor ?? this.cardShadowColor,
      grey100: grey100 ?? this.grey100,
      grey300: grey300 ?? this.grey300,
      grey600: grey600 ?? this.grey600,
      hadithSahihColor: hadithSahihColor ?? this.hadithSahihColor,
      hadithHasanColor: hadithHasanColor ?? this.hadithHasanColor,
      hadithDaifColor: hadithDaifColor ?? this.hadithDaifColor,
      hadithUnknownColor: hadithUnknownColor ?? this.hadithUnknownColor,
      hadithSahihColorDark: hadithSahihColorDark ?? this.hadithSahihColorDark,
      hadithHasanColorDark: hadithHasanColorDark ?? this.hadithHasanColorDark,
      hadithDaifColorDark: hadithDaifColorDark ?? this.hadithDaifColorDark,
      darkTextColor: darkTextColor ?? this.darkTextColor,
      mutedTextColor: mutedTextColor ?? this.mutedTextColor,
      overlayDark: overlayDark ?? this.overlayDark,
      overlayLight: overlayLight ?? this.overlayLight,
      dialogBarrierColor: dialogBarrierColor ?? this.dialogBarrierColor,
    );
  }

  @override
  ThemeExtension<AppThemeColor> lerp(
    ThemeExtension<AppThemeColor>? other,
    double t,
  ) {
    if (other is! AppThemeColor) return this;
    return AppThemeColor(
      primaryColor1: Color.lerp(primaryColor1, other.primaryColor1, t)!,
      primaryColor5: Color.lerp(primaryColor5, other.primaryColor5, t)!,
      primaryColor10: Color.lerp(primaryColor10, other.primaryColor10, t)!,
      primaryColor20: Color.lerp(primaryColor20, other.primaryColor20, t)!,
      primaryColor30: Color.lerp(primaryColor30, other.primaryColor30, t)!,
      primaryColor40: Color.lerp(primaryColor40, other.primaryColor40, t)!,
      primaryColor50: Color.lerp(primaryColor50, other.primaryColor50, t)!,
      primaryColor60: Color.lerp(primaryColor60, other.primaryColor60, t)!,
      primaryColor70: Color.lerp(primaryColor70, other.primaryColor70, t)!,
      primaryColor80: Color.lerp(primaryColor80, other.primaryColor80, t)!,
      primaryColor90: Color.lerp(primaryColor90, other.primaryColor90, t)!,
      primaryColor100: Color.lerp(primaryColor100, other.primaryColor100, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      iconShadeColor: Color.lerp(iconShadeColor, other.iconShadeColor, t)!,
      shadeColor: Color.lerp(shadeColor, other.shadeColor, t)!,
      cardColor: Color.lerp(cardColor, other.cardColor, t)!,
      primaryButtonColor: Color.lerp(
        primaryButtonColor,
        other.primaryButtonColor,
        t,
      )!,
      buttonTextColor: Color.lerp(buttonTextColor, other.buttonTextColor, t)!,
      subTitleColor: Color.lerp(subTitleColor, other.subTitleColor, t)!,
      titleColor: Color.lerp(titleColor, other.titleColor, t)!,
      textPrimaryColor: Color.lerp(
        textPrimaryColor,
        other.textPrimaryColor,
        t,
      )!,
      textSecondaryColor: Color.lerp(
        textSecondaryColor,
        other.textSecondaryColor,
        t,
      )!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
      navbarBg: Color.lerp(navbarBg, other.navbarBg, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      sectionTitleColor: Color.lerp(
        sectionTitleColor,
        other.sectionTitleColor,
        t,
      )!,
      logoTextColor: Color.lerp(logoTextColor, other.logoTextColor, t)!,
      incompleteButtonBgColor: Color.lerp(
        incompleteButtonBgColor,
        other.incompleteButtonBgColor,
        t,
      )!,
      completedButtonBgColor: Color.lerp(
        completedButtonBgColor,
        other.completedButtonBgColor,
        t,
      )!,
      incompleteIconColor: Color.lerp(
        incompleteIconColor,
        other.incompleteIconColor,
        t,
      )!,
      completedIconColor: Color.lerp(
        completedIconColor,
        other.completedIconColor,
        t,
      )!,
      completedTextColor: Color.lerp(
        completedTextColor,
        other.completedTextColor,
        t,
      )!,
      cardBgColor: Color.lerp(cardBgColor, other.cardBgColor, t)!,
      cardShadowColor: Color.lerp(cardShadowColor, other.cardShadowColor, t)!,
      grey100: Color.lerp(grey100, other.grey100, t)!,
      grey300: Color.lerp(grey300, other.grey300, t)!,
      grey600: Color.lerp(grey600, other.grey600, t)!,
      hadithSahihColor: Color.lerp(
        hadithSahihColor,
        other.hadithSahihColor,
        t,
      )!,
      hadithHasanColor: Color.lerp(
        hadithHasanColor,
        other.hadithHasanColor,
        t,
      )!,
      hadithDaifColor: Color.lerp(hadithDaifColor, other.hadithDaifColor, t)!,
      hadithUnknownColor: Color.lerp(
        hadithUnknownColor,
        other.hadithUnknownColor,
        t,
      )!,
      hadithSahihColorDark: Color.lerp(
        hadithSahihColorDark,
        other.hadithSahihColorDark,
        t,
      )!,
      hadithHasanColorDark: Color.lerp(
        hadithHasanColorDark,
        other.hadithHasanColorDark,
        t,
      )!,
      hadithDaifColorDark: Color.lerp(
        hadithDaifColorDark,
        other.hadithDaifColorDark,
        t,
      )!,
      darkTextColor: Color.lerp(darkTextColor, other.darkTextColor, t)!,
      mutedTextColor: Color.lerp(mutedTextColor, other.mutedTextColor, t)!,
      overlayDark: Color.lerp(overlayDark, other.overlayDark, t)!,
      overlayLight: Color.lerp(overlayLight, other.overlayLight, t)!,
      dialogBarrierColor: Color.lerp(
        dialogBarrierColor,
        other.dialogBarrierColor,
        t,
      )!,
    );
  }
}

/// Extension to easily access theme colors
extension AppThemeColorExtension on BuildContext {
  // Alias for backward compatibility
  AppThemeColor get color {
    return Theme.of(this).extension<AppThemeColor>() ?? AppThemeColor.light;
  }

  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }
}
