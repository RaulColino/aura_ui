import 'package:flutter/material.dart';
import '../colors/a_color.dart';
import '../colors/a_theme.dart';

//Global variables to store the light and dark themes
ATheme? _lightTheme;
ATheme? _darkTheme;

enum ThemeType { light, dark }

class AuraUI extends StatefulWidget {
  //Properties
  //The child widget that will be wrapped by AuraUI. When the theme changes, the child widget will be rebuilt.
  final Widget child;
  //Establishes a theme selection and persists it in memory across hot reloads
  static ThemeType? _currentThemeType;
  //This is a global key that let us access the _AuraUIState from the AuraUI class
  //See: https://stackoverflow.com/a/60513911
  static final GlobalKey<_AuraUIState> _auraUIStateGlobalKey = GlobalKey();

  //Constructor
  AuraUI({
    Key? key,
    required ATheme lightTheme,
    required ATheme darkTheme,
    required this.child,
  }) : super(key: _auraUIStateGlobalKey) {
    //If theme not set, set the light theme
    if (_currentThemeType == null) {
      _lightTheme = lightTheme;
      _darkTheme = darkTheme;
      //Set light theme as default
      _currentThemeType = ThemeType.light;
      AColor.setTheme(lightTheme);
    }
  }

  //Methods
  static void _setThemeAndUpdateState(ATheme? theme) {
    if (theme == null) throw Exception("AuraUI ERROR: AuraUI widget not created. Please wrap your app with the AuraUI widget. Check the docs for more info.");
    AColor.setTheme(theme);
    try {
      //To use this, AuraUI must be a StatefulWidget
      _auraUIStateGlobalKey.currentState!
          .setState(() {}); // ignore: invalid_use_of_protected_member
    } catch (e) {
      //The current state (_auraUIKey.currentState) is null if there is no widget in the tree that
      // matches the global key: _auraUIStateGlobalKey, which means that the AuraUI widget is not in the widget tree.
      throw Exception("AuraUI ERROR: AuraUI widget not found in the widget tree.");
    }
  }

  static void setLightTheme() {
    if (_currentThemeType != ThemeType.light) {
      print("setLightTheme");
      _currentThemeType = ThemeType.light;
      _setThemeAndUpdateState(_lightTheme);
    }
  }

  static void setDarkTheme() {
    if (_currentThemeType != ThemeType.dark) {
      print("setDarkTheme");
      _currentThemeType = ThemeType.dark;
      _setThemeAndUpdateState(_darkTheme);
    }
  }

  @override
  State<AuraUI> createState() => _AuraUIState();
}

class _AuraUIState extends State<AuraUI> {
  Key refreshKey = UniqueKey();

  //State refresh based on: https://stackoverflow.com/a/50116077 and https://stackoverflow.com/a/73129922/463029
  void _refreshState() {
    setState(() {
      refreshKey = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    //print("AuraUI build");
    //Rebuild all the child widgets of AuraUI
    _refreshState();
    //Return the child widget wrapped in a KeyedSubtree widget to rebuild its children after the refreshKey changes. See: https://stackoverflow.com/a/50116077
    return KeyedSubtree(
      key: refreshKey,
      child: widget.child,
    );
  }
}
