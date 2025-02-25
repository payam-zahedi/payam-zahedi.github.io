import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

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
    appBarTheme: const AppBarTheme(elevation: 0),
    primaryColor: colorScheme.primary,
    scaffoldBackgroundColor: colorScheme.surface,
    cardColor: colorScheme.surface,
    textTheme: _buildPortfolioTextTheme(base.textTheme),
    primaryTextTheme: _buildPortfolioTextTheme(base.primaryTextTheme),
    iconTheme: base.iconTheme.copyWith(color: portfolioGrey300),
    primaryIconTheme: base.iconTheme.copyWith(color: colorScheme.primary),
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.normal,
      shape: buttonShape,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        padding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        elevation: 6,
        shape: buttonShape,
        textStyle: _buildPortfolioTextTheme(base.textTheme).labelLarge,
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
    colorScheme: colorScheme
        .copyWith(surface: colorScheme.surface)
        .copyWith(error: colorScheme.error),
  );
}

TextTheme _buildPortfolioTextTheme(TextTheme base) {
  return GoogleFonts.poppinsTextTheme(base.copyWith(
    displayMedium: base.displayMedium?.copyWith(
      color: portfolioGrey700,
    ),
    displaySmall: base.displaySmall?.copyWith(
      color: portfolioGrey700,
    ),
    headlineMedium: base.headlineMedium?.copyWith(
      color: portfolioGrey700,
    ),
    headlineSmall: base.headlineSmall?.copyWith(
      fontWeight: FontWeight.w500,
      color: portfolioGrey700,
    ),
    titleLarge: base.titleLarge?.copyWith(
      fontSize: 18,
      color: portfolioGrey700,
    ),
    bodySmall: base.bodySmall?.copyWith(
      fontWeight: FontWeight.w200,
      fontSize: 14,
      color: portfolioGrey500,
      height: 1.8,
    ),
    bodyLarge: base.bodyLarge?.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodyMedium: base.bodyMedium?.copyWith(
      fontSize: 14,
      color: portfolioGrey500,
    ),
    titleMedium: base.titleMedium?.copyWith(
      color: portfolioGrey300,
    ),
    labelLarge: base.labelLarge?.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: portfolioGrey700,
    ),
  ));
}

const ColorScheme _portfolioLightScheme = ColorScheme(
  primary: portfolioBlue,
  secondary: portfolioGreen,
  surface: portfolioGrey50,
  error: portfolioRed,
  onPrimary: portfolioWhite,
  onSecondary: portfolioWhite,
  onSurface: portfolioGrey700,
  onError: portfolioWhite,
  brightness: Brightness.light,
);
