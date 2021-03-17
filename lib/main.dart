import 'package:flutter/material.dart';
import 'package:portfolio/presentation/screens/home/home.dart';
import 'package:portfolio/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payam Zahedi Portfolio',
      theme: portfolioTheme,
      home: HomeScreen(),
    );
  }
}
