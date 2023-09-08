import 'package:flutter/material.dart';
import 'package:aura_ui/aura_ui.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final _lightTheme = ATheme(
    primary: Colors.blue,
    secondary: Colors.blueGrey[200],
    success: Colors.green,
    warning: Colors.yellow,
    error: Colors.red,
    info: Colors.blue,
    background: Colors.white,
    surface100: Colors.white,
    surface200: Colors.grey[100],
    textPrimary: Colors.black,
    textSecondary: Colors.grey,
    divider: Colors.grey[300],
    border: Colors.grey[300],
  );

  static final _darkTheme = ATheme(
    primary: Colors.blue,
    secondary: Colors.blueGrey[700],
    success: Colors.green,
    warning: Colors.yellow,
    error: Colors.red,
    info: Colors.blue,
    background: Colors.black,
    surface100: Colors.grey[900],
    surface200: Colors.grey[800],
    textPrimary: Colors.white,
    textSecondary: Colors.grey,
    divider: Colors.grey[700],
    border: Colors.grey[700],
  );

  @override
  Widget build(BuildContext context) {
    try {
      return AuraUI(
        lightTheme: _lightTheme,
        darkTheme: _darkTheme,
        child: MaterialApp(
          title: 'Example',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Home(),
        ),
      );
    } catch (e) {
      print(e);
      return Container(
        child: const Text("error"),
      );
    }
  }
}

// // Erroneous example. This is the same as above, but without AuraUI. It will show error colors.
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     try {
//       return MaterialApp(
//         title: 'Example',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: const Home(),
//       );
//     } catch (e) {
//       print(e);
//       return Container(
//         child: const Text("error"),
//       );
//     }
//   }
// }

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AColor.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ThemeSettings(),
          AText.displayXL("Display XL").styles(
            color: AColor.secondary,
            fontWeight: AFontWeight.bold,
          ),
          AText.displayL("Display L").styles(
            color: AColor.error,
            fontFamily: AFontFamily.inter,
          ),
        ],
      ),
    );
  }
}

class ThemeSettings extends StatelessWidget {
  const ThemeSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AText.displayXL("Theme Settings").styles(
          color: AColor.textPrimary,
        ),
        Row(
          children: [
            ElevatedButton(
              child: AText.bodyM("Light Theme"),
              onPressed: () {
                AuraUI.setLightTheme();
              },
            ),
            ElevatedButton(
              child: AText.bodyM("Dark Theme"),
              onPressed: () {
                AuraUI.setDarkTheme();
              },
            ),
          ],
        ),
      ],
    );
  }
}
