import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Colors.blueAccent;
  static const Color lightGrey = Color(0xFFE0E0E0);
  static const Color darkText = Color(0xFF333333);
  static const Color background = Color(0xFFF5F5DC);
}

class AppTextStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.darkText,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

class AppStrings {
  static const String loginTitle = 'Login';
  static const String emailHint = 'E-mail';
  static const String passwordHint = 'Senha';
  static const String loginButton = 'Entrar';
  static const String registerButton = 'Registrar-se';
  static const String forgotPasswordButton = 'Esqueci minha senha';
}
