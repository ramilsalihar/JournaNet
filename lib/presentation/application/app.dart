import 'package:flutter/material.dart';
import 'package:swiftui/core/styles/app_theme.dart';
import 'package:swiftui/presentation/pages/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const HomePage(),
    );
  }
}
