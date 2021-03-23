import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/presentation/screens/home/home.dart';
import 'package:portfolio/theme/theme.dart';

import 'generated/l10n.dart';

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
      localizationsDelegates: [
        // 1
        S.delegate,
        // 2
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
