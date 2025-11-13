// import 'package:flutter/material.dart';
// import 'package:one_ummah/core/config/app_theme_color.dart';
// import 'package:one_ummah/l10n/app_localizations.dart';
// import 'package:one_ummah/core/utils/number_utility.dart';

// extension ContextExtensions on BuildContext {
//   // Theme & Colors
//   AppThemeColor get colors {
//     return Theme.of(this).extension<AppThemeColor>() ?? AppThemeColor.light;
//   }

//   // Alias for backward compatibility
//   AppThemeColor get color {
//     return Theme.of(this).extension<AppThemeColor>() ?? AppThemeColor.light;
//   }

//   // Localization
//   AppLocalizations get locale => AppLocalizations.of(this)!;
//   AppLocalizations get l10n => AppLocalizations.of(this)!;

//   bool get isDarkMode {
//     return Theme.of(this).brightness == Brightness.dark;
//   }

//   ThemeData get theme => Theme.of(this);
//   TextTheme get textTheme => Theme.of(this).textTheme;
//   ColorScheme get colorScheme => Theme.of(this).colorScheme;

//   // Screen Size
//   Size get screenSize => MediaQuery.of(this).size;
//   double get screenWidth => MediaQuery.of(this).size.width;
//   double get screenHeight => MediaQuery.of(this).size.height;

//   // Safe Area
//   EdgeInsets get viewPadding => MediaQuery.of(this).viewPadding;
//   EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;
//   double get bottomPadding => MediaQuery.of(this).viewPadding.bottom;
//   double get topPadding => MediaQuery.of(this).viewPadding.top;

//   // Navigation
//   Future<T?> navigatorPush<T>(Widget page) async {
//     if (!mounted) return null;
//     return Navigator.push<T>(
//       this,
//       MaterialPageRoute<T>(builder: (context) => page),
//     );
//   }

//   Future<T?> navigatorPushReplacement<T>(Widget page) async {
//     if (!mounted) return null;
//     return Navigator.pushReplacement<T, Object?>(
//       this,
//       MaterialPageRoute<T>(builder: (context) => page),
//     );
//   }

//   void navigatorPop<T>({T? result}) {
//     if (!mounted) return;
//     Navigator.pop(this, result);
//   }

//   Future<T?> navigatorPushNamed<T>(
//     String routeName, {
//     Object? arguments,
//   }) async {
//     if (!mounted) return null;
//     return Navigator.pushNamed<T>(this, routeName, arguments: arguments);
//   }

//   Future<T?> navigatorPushReplacementNamed<T>(
//     String routeName, {
//     Object? arguments,
//   }) async {
//     if (!mounted) return null;
//     return Navigator.pushReplacementNamed<T, Object?>(
//       this,
//       routeName,
//       arguments: arguments,
//     );
//   }

//   Future<T?> navigatorPushNamedAndRemoveUntil<T>(
//     String routeName,
//     bool Function(Route<dynamic>) predicate, {
//     Object? arguments,
//   }) async {
//     if (!mounted) return null;
//     return Navigator.pushNamedAndRemoveUntil<T>(
//       this,
//       routeName,
//       predicate,
//       arguments: arguments,
//     );
//   }

//   bool navigatorCanPop() {
//     if (!mounted) return false;
//     return Navigator.canPop(this);
//   }

//   void navigatorPopUntil(bool Function(Route<dynamic>) predicate) {
//     if (!mounted) return;
//     Navigator.popUntil(this, predicate);
//   }

//   // Bottom Sheet
//   Future<T?> showBottomSheet<T>(Widget bottomSheet) async {
//     if (!mounted) return null;
//     return showModalBottomSheet<T>(
//       context: this,
//       builder: (context) => bottomSheet,
//       backgroundColor: Colors.transparent,
//       isScrollControlled: true,
//       useSafeArea: true,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//       ),
//     );
//   }

//   // Snackbar
//   void showSnackBar(String message, {Duration? duration}) {
//     if (!mounted) return;
//     ScaffoldMessenger.of(this).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         duration: duration ?? const Duration(seconds: 2),
//       ),
//     );
//   }
// }

// extension StringExtensions on String {
//   String capitalize() {
//     if (isEmpty) return this;
//     return '${this[0].toUpperCase()}${substring(1)}';
//   }

//   String capitalizeWords() {
//     if (isEmpty) return this;
//     return split(' ').map((word) => word.capitalize()).join(' ');
//   }

//   /// Convert string number to localized format
//   String toLocalizedNumber(BuildContext context) {
//     final AppLocalizations localizations = context.l10n;
//     return NumberConverter.convertNumber(
//       number: this,
//       locale: localizations.localeName,
//     );
//   }
// }

// extension IntExtensions on int {
//   Duration get seconds => Duration(seconds: this);
//   Duration get minutes => Duration(minutes: this);
//   Duration get hours => Duration(hours: this);
//   Duration get days => Duration(days: this);

//   // SizedBox helpers
//   SizedBox get height => SizedBox(height: toDouble());
//   SizedBox get width => SizedBox(width: toDouble());

//   /// Convert int to localized string
//   String toLocalizedString(BuildContext context) {
//     return NumberConverter.convertNumber(
//       number: toString(),
//       locale: context.l10n.localeName,
//     );
//   }
// }

// extension DoubleExtensions on double {
//   Duration get seconds => Duration(milliseconds: (this * 1000).round());

//   // SizedBox helpers
//   SizedBox get height => SizedBox(height: this);
//   SizedBox get width => SizedBox(width: this);
// }

// extension ColorExtensions on Color {
//   /// Create a color with an alpha value (0-100)
//   Color withAlphaInt(int alpha) {
//     return withValues(alpha: alpha / 100.0);
//   }
// }
