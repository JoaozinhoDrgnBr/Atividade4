import 'package:flutter/material.dart';
import 'Modules/splash_screen.dart';
import 'Modules/onboarding_screen.dart';
import 'Modules/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Splash Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(
              nextRoute: '/onboarding',
              lottiePath: 'assets/animations/splash_animation.json',
            ),
        '/onboarding': (context) => const OnboardingScreen(
              loginRoute: '/login',
            ),
        '/login': (context) => const LoginScreen(
              homeRoute: '/home',
            ),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo ao aplicativo!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
