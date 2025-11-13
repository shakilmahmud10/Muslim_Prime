import 'package:flutter/material.dart';

/// AppColor defines all color constants used throughout the application.
/// Contains light and dark theme variants for comprehensive theming support.
class AppColor {
  AppColor._();

  ///////////////////////////Light Colors///////////////////////
  // Primary color shades (12-step scale)
  static const Color primaryColorLight01 = Color(0xFFFBFDFC);
  static const Color primaryColorLight05 = Color(0xFFF5FBF9);
  static const Color primaryColorLight10 = Color(0xFFEBF7F3);
  static const Color primaryColorLight20 = Color(0xFFD7EFE6);
  static const Color primaryColorLight30 = Color(0xFFC3E7DA);
  static const Color primaryColorLight40 = Color(0xFFAFDFCE);
  static const Color primaryColorLight50 = Color(0xFF9BD8C2);
  static const Color primaryColorLight60 = Color(0xFF86CFB5);
  static const Color primaryColorLight70 = Color(0xFF72C7A9);
  static const Color primaryColorLight80 = Color(0xFF5EC09D);
  static const Color primaryColorLight90 = Color(0xFF4AB890);
  static const Color primaryColorLight100 = Color(0xFF36B084);

  // Alias for primary color
  static const Color primaryColorLight = primaryColorLight100;

  // Background and surface colors
  static const Color backgroundColorLight = Color(0xFFFBFDFC);
  static const Color navbarBgLight = Color(0xFFFBFDFC);
  static const Color secondaryColorLight = Color(0xFF9BD8C2);
  static const Color iconShadeColorLight = Color(0xFFD7EFE6);
  static const Color shadeColorLight = Color(0xFFEBF7F3);

  // Text Colors
  static const Color textPrimaryColorLight = Color(0xFF282E29);
  static const Color textSecondaryColorLight = Color(0xFF686D69);
  static const Color titleColorLight = Color(0xFF282E29);
  static const Color subTitleColorLight = Color(0xFF686D69);
  static const Color sectionTitleColorLight = Color(0xFF282E29);
  static const Color logoTextColorLight = Color(0xFF282E29);

  // Button Colors
  static const Color primaryButtonColorLight = primaryColorLight100;
  static const Color buttonTextColorLight = Color(0xFFFBFFFB);

  // Incomplete/Completed state colors
  static const Color incompleteButtonBgColorLight = primaryColorLight05;
  static const Color completedButtonBgColorLight = primaryColorLight100;
  static const Color incompleteIconColorLight = Colors.black38;
  static const Color completedIconColorLight = Colors.white;
  static const Color completedTextColorLight = Colors.white;

  // Card Colors
  static const Color cardBgColorLight = Color(0xFFFFFFFF);
  static const Color cardShadowColorLight = Color(0x1A000000);

  // Gradient colors
  static const Color gradientTopColorLight = Color(0xFFEBF7F3);
  static const Color gradientBottom1ColorLight = Color(0xFFEBF7F3);
  static const Color gradientBottom2ColorLight = Color(0xFFF5F5F5);
  static const Color gradientBottom3ColorLight = Color(0xFFEBF7F3);
  static const Color mosqueTopColorLight = Color(0xFFD7EFE6);
  static const Color cloudColorLight = Color(0xFFFFFFFF);

  static const Color gradientTopLight = Color(0xFFF5FBF9);
  static const Color gradientBottomLight = Color(0xFFFBFDFC);

  // Feature card colors
  static const Color cardBg1ColorLight = Color(0xFF9BD8C2);
  static const Color cardBg2ColorLight = Color(0xFF72C7A9);

  static const Color questionBankCardColorLight = Color(0xFFFFFFFF);

  // Last Read colors
  static const Color lastReadFillColorLight = Color(0xFF4989E9);
  static const Color lastReadShadeColorLight = Color(0xFFE0EDF8);
  static const Color lastReadBorderColorLight = Color(0xFFC9DEF6);

  // Self Ruqyah colors
  static const Color selfRuqyahFillColorLight = Color(0xFF36B084);
  static const Color selfRuqyahShadeColorLight = Color(0xFFEBF7F3);
  static const Color selfRuqyahBorderColorLight = Color(0xFFD7EFE6);

  // Books colors
  static const Color booksFillColorLight = Color(0xFFC36839);
  static const Color booksShadeColorLight = Color(0xFFDCF0E1);
  static const Color booksBorderColorLight = Color(0xFFC2E4CB);

  // Prayer Times colors
  static const Color prayerTimesFillColorLight = Color(0xFF8450EC);
  static const Color prayerTimesShadeColorLight = Color(0xFFE9E6F9);
  static const Color prayerTimesBorderColorLight = Color(0xFFDAD1F7);

  // Other Apps colors
  static const Color otherAppsFillColorLight = Color(0xFF277BC0);
  static const Color otherAppsShadeColorLight = Color(0xFFDBEBF2);
  static const Color otherAppsBorderColorLight = Color(0xFFC0DAEB);

  // Support Us colors
  static const Color supportUsFillColorLight = Color(0xFFE0144C);
  static const Color supportUsShadeColorLight = Color(0xFFF7DCE1);
  static const Color supportUsBorderColorLight = Color(0xFFF4BECB);

  // Audio colors
  static const Color audioFillColorLight = Color(0xFFFF6B35);
  static const Color audioShadeColorLight = Color(0xFFFFE8DD);
  static const Color audioBorderColorLight = Color(0xFFFFD1C1);

  // Video colors
  static const Color videoFillColorLight = Color(0xFFE91E63);
  static const Color videoShadeColorLight = Color(0xFFFCE4EC);
  static const Color videoBorderColorLight = Color(0xFFF8BBD9);

  ///////////////////////////Dark Colors///////////////////////
  // Primary color shades (12-step scale)
  static const Color primaryColorDark100 = Color(0xFF36B084);
  static const Color primaryColorDark90 = Color(0xFF319E77);
  static const Color primaryColorDark80 = Color(0xFF2B8D6A);
  static const Color primaryColorDark70 = Color(0xFF267B5C);
  static const Color primaryColorDark60 = Color(0xFF206A4F);
  static const Color primaryColorDark50 = Color(0xFF1B5842);
  static const Color primaryColorDark40 = Color(0xFF164635);
  static const Color primaryColorDark30 = Color(0xFF103528);
  static const Color primaryColorDark20 = Color(0xFF0B231A);
  static const Color primaryColorDark10 = Color(0xFF05120D);
  static const Color primaryColorDark05 = Color(0xFF030907);
  static const Color primaryColorDark01 = Color(0xFF010403);

  // Alias for primary color
  static const Color primaryColorDark = primaryColorDark100;

  // Background and surface colors
  static const Color backgroundColorDark = Color(0xFF010403);
  static const Color navbarBgDark = Color(0xFF05120D);
  static const Color secondaryColorDark = Color(0xFF9BD8C2);
  static const Color iconShadeColorDark = Color(0xFF0B231A);
  static const Color shadeColorDark = Color(0xFF05120D);

  // Text Colors
  static const Color textPrimaryColorDark = Color(0xFF9BD8C2);
  static const Color textSecondaryColorDark = Color(0xFF86CFB5);
  static const Color titleColorDark = Color(0xFF9BD8C2);
  static const Color subTitleColorDark = Color(0xFF86CFB5);
  static const Color sectionTitleColorDark = Color(0xFFFFFFFF);
  static const Color logoTextColorDark = Color(0xFFFFFFFF);

  // Button Colors
  static const Color primaryButtonColorDark = Color(0xFF05120D);
  static const Color buttonTextColorDark = Color(0xFFFBFDFC);

  // Incomplete/Completed state colors
  static const Color incompleteButtonBgColorDark = primaryColorDark10;
  static const Color completedButtonBgColorDark = primaryColorDark40;
  static const Color incompleteIconColorDark = Colors.white24;
  static const Color completedIconColorDark = Colors.white;
  static const Color completedTextColorDark = Colors.white;

  // Card Colors
  static const Color cardBgColorDark = Color(0xFF05120D);
  static const Color cardShadowColorDark = Color(0x40000000);

  ///////////////////////////Common Colors///////////////////////
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Colors.transparent;

  // Alpha variants
  static const Color black87 = Colors.black87;
  static const Color black54 = Colors.black54;
  static const Color black38 = Colors.black38;
  static const Color white24 = Colors.white24;

  // Grey shades
  static const Color grey100 = Color(0xFFF5F5F5);
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey600 = Color(0xFF757575);

  // Semantic Colors
  static const Color successColor = Color(0xFF4CAF50);
  static const Color errorColor = Color(0xFFE53935);
  static const Color warningColor = Color(0xFFFFA726);
  static const Color infoColor = Color(0xFF29B6F6);

  // Hadith grade colors
  static const Color hadithSahihColor = Color(
    0xFF4CAF50,
  ); // Green for authentic
  static const Color hadithHasanColor = Color(0xFFFFA726); // Orange for good
  static const Color hadithDaifColor = Color(0xFFE53935); // Red for weak
  static const Color hadithUnknownColor = Color(0xFF9E9E9E); // Grey for unknown

  // Hadith grade colors - Darker variants for better contrast with white text
  static const Color hadithSahihColorDark = Color(0xFF2E7D32); // Dark green
  static const Color hadithHasanColorDark = Color(0xFFEF6C00); // Dark orange
  static const Color hadithDaifColorDark = Color(0xFFC62828); // Dark red

  // Text colors (for app_text_styles)
  static const Color darkTextColor = Color(0xFF2F3E35);
  static const Color mutedTextColor = Color(0xFF6B7280);

  // Overlay colors
  static const Color overlayDark = Color(0xBF000000); // black with 0.75 alpha
  static const Color overlayLight = Color(0x33000000); // black with 0.2 alpha
  static const Color dialogBarrierColor = Colors.black54;

  // Share Button Gradients
  static const List<Color> shareButtonGradients = [
    Color(0xFF36B084),
    Color(0xFF9BD8C2),
  ];

  // Support Us Theme Colors (for Support Us feature)
  static const Color supportUsPrimaryGreen = Color(0xFF267B5C);
  static const Color supportUsButtonGreen = Color(0xFF36B084);
  static const Color supportUsLightGreenBackground = Color(0xFFEBF7F3);
  static const Color supportUsIconBackground = Color(0xFFF5FBF9);
  static const Color supportUsBulletColor = Color(0xFF9BD8C2);
  static const Color supportUsBackgroundColor = Color(0xFFFBFDFC);
  static const Color supportUsTextColor = Color(0xFF4B5563);
  static const Color supportUsTextDark = Color(0xFF1F2937);
  static const Color supportUsTextLight = Color(0xFF6B7280);

  // Hadith App Background
  static const Color hadithAppBackgroundColor = Color(0xFFF5F5F5);
}
