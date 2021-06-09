import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/presentation/screens/home/home.dart';
import 'package:portfolio/resource/index.dart';

import 'generated/l10n.dart';

void main() {
  runApp(Portfolio());
}
//ToDo(payam) : add project section
//ToDo(payam) : add skills section
//ToDo(payam) : add code lab
//ToDo(payam) : add fun fact
//ToDo(payam) : support multy theme
class Portfolio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payam Zahedi Portfolio',
      theme: portfolioTheme,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: HomeScreen(),
    );
  }
}
