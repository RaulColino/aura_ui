import 'dart:ui';

import 'a_theme.dart';

class AColor {
  static Color primary = const Color(0xFFF32191);
  static Color secondary = const Color(0xFFED2F88);
  static Color success = const Color(0xFFF95591);
  static Color warning = const Color(0xFFFF7300);
  static Color error = const Color(0xFFF44336);
  static Color info = const Color(0xFFD40000);
  static Color background = const Color(0xFFBE1C1C);
  static Color surface100 = const Color(0xFFA43D47);
  static Color surface200 = const Color(0xFF791010);
  static Color textPrimary = const Color(0xFF593B3B);
  static Color textSecondary = const Color(0xFF9C5858);
  static Color divider = const Color(0xFFC7ACAC);
  static Color border = const Color(0xFFE2ABAB);

  static void setTheme(ATheme theme) {
    primary = theme.primary!;
    secondary = theme.secondary!;
    success = theme.success!;
    warning = theme.warning!;
    error = theme.error!;
    info = theme.info!;
    background = theme.background!;
    surface100 = theme.surface100!;
    surface200 = theme.surface200!;
    textPrimary = theme.textPrimary!;
    textSecondary = theme.textSecondary!;
    divider = theme.divider!;
    border = theme.border!;
  }
}
