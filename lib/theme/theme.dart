import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './colors.dart';

const defaultLetterSpacing = 0.03;
const mediumLetterSpacing = 0.04;
const largeLetterSpacing = 1.0;

final ThemeData portfolioTheme = _buildPortfolioTheme();

ThemeData _buildPortfolioTheme() {
  final base = ThemeData.light();
  final colorScheme = _portfolioLightScheme;
  final buttonShape = StadiumBorder(
    side: BorderSide(
      color: colorScheme.primary,
      width: 2,
    ),
  );
  return base.copyWith(
    appBarTheme: const AppBarTheme(brightness: Brightness.light, elevation: 0),
    colorScheme: colorScheme,
    accentColor: colorScheme.secondary,
    primaryColor: colorScheme.primary,
    buttonColor: colorScheme.primary,
    scaffoldBackgroundColor: colorScheme.background,
    backgroundColor: colorScheme.background,
    cardColor: colorScheme.surface,
    errorColor: colorScheme.error,
    textTheme: _buildPortfolioTextTheme(base.textTheme),
    primaryTextTheme: _buildPortfolioTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildPortfolioTextTheme(base.accentTextTheme),
    iconTheme: base.iconTheme.copyWith(color: portfolioGrey300),
    primaryIconTheme: base.iconTheme.copyWith(color: colorScheme.primary),
    accentIconTheme: base.iconTheme.copyWith(color: colorScheme.primary),
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.normal,
      shape: buttonShape,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: colorScheme.background,
        onPrimary: colorScheme.onSurface,
        onSurface: colorScheme.onSurface,
        padding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        elevation: 6,
        shape: buttonShape,
        textStyle: _buildPortfolioTextTheme(base.textTheme).button,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0),
        borderSide: BorderSide(color: portfolioGrey500),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0),
        borderSide: BorderSide(color: portfolioRed),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0),
        borderSide: BorderSide(color: portfolioRed),
      ),
      hintStyle: TextStyle(
        fontSize: 14,
        color: portfolioGrey500,
        fontWeight: FontWeight.normal,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
    ),
    dividerTheme: DividerThemeData(color: portfolioGrey100),
    dividerColor: portfolioGrey100,
  );
}

TextTheme _buildPortfolioTextTheme(TextTheme base) {
  return GoogleFonts.poppinsTextTheme(base.copyWith(
    headline2: base.headline2?.copyWith(
      color: portfolioGrey700,
    ),
    headline3: base.headline3?.copyWith(
      color: portfolioGrey700,
    ),
    headline4: base.headline4?.copyWith(
      color: portfolioGrey700,
    ),
    headline5: base.headline5?.copyWith(
      fontWeight: FontWeight.w500,
      color: portfolioGrey700,

    ),
    headline6: base.headline6?.copyWith(
      fontSize: 18,
      color: portfolioGrey700,
    ),
    caption: base.caption?.copyWith(
      fontWeight: FontWeight.w200,
      fontSize: 14,
      color: portfolioGrey500,
      height: 1.8,
    ),
    bodyText1: base.bodyText1?.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodyText2: base.bodyText2,
    subtitle1: base.subtitle1?.copyWith(
      color: portfolioGrey300,
      letterSpacing: 1.1,
    ),
    button: base.button?.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: Colors.red,
    ),
  ));
}

const ColorScheme _portfolioLightScheme = ColorScheme(
  primary: portfolioBlue,
  primaryVariant: portfolioBlue,
  secondary: portfolioGreen,
  secondaryVariant: portfolioGreen,
  surface: portfolioGrey50,
  background: portfolioWhite,
  error: portfolioRed,
  onPrimary: portfolioWhite,
  onSecondary: portfolioWhite,
  onSurface: portfolioGrey700,
  onBackground: portfolioGrey500,
  onError: portfolioWhite,
  brightness: Brightness.light,
);
