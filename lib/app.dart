import 'package:atividade4/themes/theme_provider.dart';
import 'package:atividade4/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Atividade 4',
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      theme: themeProvider.lightTheme,
      darkTheme: themeProvider.darkTheme,
      home: Scaffold(
        appBar: CustomAppBar(),
        body: Center(child: Text('Bem-vindo ao MyApp!')),
      ),
    );
  }
}
