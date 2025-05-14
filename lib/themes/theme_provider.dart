import 'package:atividade4/themes/dark_theme.dart';
import 'package:atividade4/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  Color _customPrimaryColor = AppColors.primary;
  String _customFont = 'Inter';

  ThemeMode get themeMode => _themeMode;
  bool get isDarkMode => _themeMode == ThemeMode.dark;
  Color get primaryColor => _customPrimaryColor;
  Color get scaffoldBackgroundColor =>
      Color.lerp(_customPrimaryColor, Colors.white, 0.96)!;
  String get font => _customFont;

  void toggleTheme(bool isOn) {
    _themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  ThemeData get lightTheme => LightTheme.lightTheme;
  ThemeData get darkTheme => DarkTheme.darkTheme;
}
