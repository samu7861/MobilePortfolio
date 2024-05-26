import 'package:flutter/material.dart';
import 'package:my_portfolio/Presentation/Screens/Home/home_screen.dart';
import 'package:my_portfolio/config/styles/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().getThemeData(),
      debugShowCheckedModeBanner: false,
      title: 'Samuel FG',
      home: const HomeScreen()
    );
  }
}
