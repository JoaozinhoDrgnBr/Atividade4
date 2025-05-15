import 'package:atividade4/screens/home/home_screen.dart';
import 'package:atividade4/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'Modules/splash_screen.dart';
import 'Modules/onboarding_screen.dart';
import 'shared/constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Splash Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.blue),
      initialRoute: '/',
      routes: {
        '/':
            (context) => const SplashScreen(
              nextRoute: '/onboarding',
              lottiePath: 'assets/animations/splash_animation.json',
            ),
        '/onboarding':
            (context) => const OnboardingScreen(loginRoute: '/login'),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
