// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:ui';

import 'a_theme.dart';

//You can't exclude this file from the dart formatter because the Flutter team has not implemented this feature yet -_-

class AColor {
  //Exceptions
  static final Exception _auraWidgetException = Exception("AuraUI ERROR: AuraUI widget not created. Please wrap your app with the AuraUI widget. Check the docs for more info.");
  static final Exception _colorNullException = Exception("AuraUI ERROR: Color cannot be null.");

  //Aura semantic colors
  static Color? _primary;
  static Color? _secondary;
  static Color? _success;
  static Color? _warning;
  static Color? _error;
  static Color? _info;
  static Color? _background;
  static Color? _surface100;
  static Color? _surface200;
  static Color? _textPrimary;
  static Color? _textSecondary;
  static Color? _divider;
  static Color? _border;

  //Getters
  static Color get primary { if (_primary == null) throw _auraWidgetException; else return _primary!; }
  static Color get secondary { if (_secondary == null) throw _auraWidgetException; else return _secondary!; }
  static Color get success { if (_success == null) throw _auraWidgetException; else return _success!; }
  static Color get warning { if (_warning == null) throw _auraWidgetException; else return _warning!; }
  static Color get error { if (_error == null) throw _auraWidgetException; else return _error!; }
  static Color get info { if (_info == null) throw _auraWidgetException; else return _info!; }
  static Color get background { if (_background == null) throw _auraWidgetException; else return _background!; }
  static Color get surface100 { if (_surface100 == null) throw _auraWidgetException; else return _surface100!; }
  static Color get surface200 { if (_surface200 == null) throw _auraWidgetException; else return _surface200!; }
  static Color get textPrimary { if (_textPrimary == null) throw _auraWidgetException; else return _textPrimary!; }
  static Color get textSecondary { if (_textSecondary == null) throw _auraWidgetException; else return _textSecondary!; }
  static Color get divider { if (_divider == null) throw _auraWidgetException; else return _divider!; }
  static Color get border { if (_border == null) throw _auraWidgetException; else return _border!; }

  //Setters
  static set primary(Color? color) { if (color == null) throw _colorNullException; else _primary = color; }
  static set secondary(Color? color) { if (color == null) throw _colorNullException; else _secondary = color; }
  static set success(Color? color) { if (color == null) throw _colorNullException; else _success = color; }
  static set warning(Color? color) { if (color == null) throw _colorNullException; else _warning = color; }
  static set error(Color? color) { if (color == null) throw _colorNullException; else _error = color; }
  static set info(Color? color) { if (color == null) throw _colorNullException; else _info = color; }
  static set background(Color? color) { if (color == null) throw _colorNullException; else _background = color; }
  static set surface100(Color? color) { if (color == null) throw _colorNullException; else _surface100 = color; }
  static set surface200(Color? color) { if (color == null) throw _colorNullException; else _surface200 = color; }
  static set textPrimary(Color? color) { if (color == null) throw _colorNullException; else _textPrimary = color; }
  static set textSecondary(Color? color) { if (color == null) throw _colorNullException; else _textSecondary = color; }
  static set divider(Color? color) { if (color == null) throw _colorNullException; else _divider = color; }
  static set border(Color? color) { if (color == null) throw _colorNullException; else _border = color; }

  //Constructor
  AColor._();

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

// class AColor {
  
//   static final Exception _exception = Exception("AuraUI ERROR: AuraUI widget not created. Please wrap your app with the AuraUI widget. Check the docs for more info.");

//   //Aura semantic colors
//   static AColorProvider? _primary;
//   static AColorProvider? _secondary;
//   static AColorProvider? _success;
//   static AColorProvider? _warning;
//   static AColorProvider? _error;
//   static AColorProvider? _info;
//   static AColorProvider? _background;
//   static AColorProvider? _surface100;
//   static AColorProvider? _surface200;
//   static AColorProvider? _textPrimary;
//   static AColorProvider? _textSecondary;
//   static AColorProvider? _divider;
//   static AColorProvider? _border;

//   static AColorProvider get primary {
//     if (_primary == null) throw _exception;
//     return _primary!;
//   }
//   static AColorProvider get secondary {
//     if (_secondary == null) throw _exception;
//     return _secondary!;
//   }
//   static AColorProvider get success {
//     if (_success == null) throw _exception;
//     return _success!;
//   }
//   static AColorProvider get warning {
//     if (_warning == null) throw _exception;
//     return _warning!;
//   }
//   static AColorProvider get error {
//     if (_error == null) throw _exception;
//     return _error!;
//   }
//   static AColorProvider get info {
//     if (_info == null) throw _exception;
//     return _info!;
//   }
//   static AColorProvider get background {
//     if (_background == null) throw _exception;
//     return _background!;
//   }
//   static AColorProvider get surface100 {
//     if (_surface100 == null) throw _exception;
//     return _surface100!;
//   }
//   static AColorProvider get surface200 {
//     if (_surface200 == null) throw _exception;
//     return _surface200!;
//   }
//   static AColorProvider get textPrimary {
//     if (_textPrimary == null) throw _exception;
//     return _textPrimary!;
//   }
//   static AColorProvider get textSecondary {
//     if (_textSecondary == null) throw _exception;
//     return _textSecondary!;
//   }
//   static AColorProvider get divider {
//     if (_divider == null) throw _exception;
//     return _divider!;
//   }
//   static AColorProvider get border {
//     if (_border == null) throw _exception;
//     return _border!;
//   }


//   static set primary(Color? color) {
//     if (color == null) throw Exception("AuraUI ERROR: color cannot be null.");
//     _primary = AColorProvider(color);
//   }
//   static set secondary(Color? color) {
//     if (color == null) throw Exception("AuraUI ERROR: color cannot be null.");
//     _secondary = AColorProvider(color);
//   }
//   static set success(Color? color) {
//     if (color == null) throw Exception("AuraUI ERROR: color cannot be null.");
//     _success = AColorProvider(color);
//   }
//   static set warning(Color? color) {
//     if (color == null) throw Exception("AuraUI ERROR: color cannot be null.");
//     _warning = AColorProvider(color);
//   }
//   static set error(Color? color) {
//     if (color == null) throw Exception("AuraUI ERROR: color cannot be null.");
//     _error = AColorProvider(color);
//   }
//   static set info(Color? color) {
//     if (color == null) throw Exception("AuraUI ERROR: color cannot be null.");
//     _info = AColorProvider(color);
//   }
//   static set background(Color? color) {
//     if (color == null) throw Exception("AuraUI ERROR: color cannot be null.");
//     _background = AColorProvider(color);
//   }
//   static set surface100(Color? color) {
//     if (color == null) throw Exception("AuraUI ERROR: color cannot be null.");
//     _surface100 = AColorProvider(color);
//   }
//   static set surface200(Color? color) {
//     if (color == null) throw Exception("AuraUI ERROR: color cannot be null.");
//     _surface200 = AColorProvider(color);
//   }
//   static set textPrimary(Color? color) {
//     if (color == null) throw Exception("AuraUI ERROR: color cannot be null.");
//     _textPrimary = AColorProvider(color);
//   }
//   static set textSecondary(Color? color) {
//     if (color == null) throw Exception("AuraUI ERROR: color cannot be null.");
//     _textSecondary = AColorProvider(color);
//   }
//   static set divider(Color? color) {
//     if (color == null) throw Exception("AuraUI ERROR: color cannot be null.");
//     _divider = AColorProvider(color);
//   }
//   static set border(Color? color) {
//     if (color == null) throw Exception("AuraUI ERROR: color cannot be null.");
//     _border = AColorProvider(color);
//   }

//   //Constructor
//   AColor._();

//   static void setTheme(ATheme theme) {
//     primary = AColorProvider(theme.primary!);
//     secondary = AColorProvider(theme.secondary!);
//     success = AColorProvider(theme.success!);
//     warning = AColorProvider(theme.warning!);
//     error = AColorProvider(theme.error!);
//     info = AColorProvider(theme.info!);
//     background = AColorProvider(theme.background!);
//     surface100 = AColorProvider(theme.surface100!);
//     surface200 = AColorProvider(theme.surface200!);
//     textPrimary = AColorProvider(theme.textPrimary!);
//     textSecondary = AColorProvider(theme.textSecondary!);
//     divider = AColorProvider(theme.divider!);
//     border = AColorProvider(theme.border!);
//   }
// }



// class AColorProvider extends Color {
//   final Color? _color;
//   AColorProvider(this._color) : super(_color?.value ?? 0xFF00FF00);

//   Color get color => Color(value);

//   @override
//   int get value {
//     try {
//       return _color!.value;
//     } catch (e) {
//       throw Exception("AuraUI ERROR: AuraUI widget not created. Please wrap your app with the AuraUI widget. Check the docs for more info.");
//     }
//   }
// }

