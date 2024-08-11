import 'package:flutter/material.dart';
import 'package:tutorial/extension/num_extension.dart';

class AppTheme {
  static final AppTheme instance = AppTheme._init();
  AppTheme._init();

  final ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF242429),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF242429),
      centerTitle: false,
      elevation: 0,
      titleTextStyle: 16.w600.copyWith(color: const Color(0xFFFFFFFF)),
      iconTheme: const IconThemeData(color: Color(0xFFFFFFFF)),
    ),
  );

  final ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF2F1F3),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFFF2F1F3),
      centerTitle: false,
      elevation: 0,
      titleTextStyle: 16.w600.copyWith(color: const Color(0xFF1D2A5D)),
      iconTheme: const IconThemeData(color: Color(0xFF1D2A5D)),
    ),
  );

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static bool _assetExists(String assetPath) {
    try {
      Image.asset(assetPath);
      return true;
    } catch (e) {
      // If an error occurs, the asset does not exist
      return false;
    }
  }

  static String getAsset(BuildContext context, String assetName) {
    String name = assetName.split('/').last;

    String dark = 'assets/svg/dark/$name';
    String light = 'assets/svg/light/$name';
    assert(_assetExists(dark), '$assetName does not exist');
    assert(_assetExists(light), '$assetName does not exist');
    if (isDarkMode(context)) {
      return dark;
    } else {
      return light;
    }
  }
}
