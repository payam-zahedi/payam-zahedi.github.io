import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './colors.dart';

const defaultLetterSpacing = 0.03;
const mediumLetterSpacing = 0.04;
const largeLetterSpacing = 1.0;

final ThemeData portfolioTheme = _buildPortfolioTheme();

ThemeData _buildPortfolioTheme() {
  final base = ThemeData.light();
  return base.copyWith(
    appBarTheme: const AppBarTheme(brightness: Brightness.light, elevation: 0),
    colorScheme: _portfolioLightScheme,
    accentColor: portfolioGreen,
    primaryColor: portfolioBlue,
    buttonColor: portfolioBlue,
    scaffoldBackgroundColor: portfolioWhite,
    backgroundColor: portfolioWhite,
    cardColor: portfolioGrey100,
    errorColor: portfolioRed,
    buttonTheme: const ButtonThemeData(
      colorScheme: _portfolioLightScheme,
      textTheme: ButtonTextTheme.normal,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: portfolioBlue,
        onPrimary: portfolioWhite,
        elevation: 0,
        minimumSize: Size.fromHeight(50),
        shape: StadiumBorder(),
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
    primaryIconTheme: base.iconTheme.copyWith(color: portfolioBlue),
    textTheme: _buildPortfolioTextTheme(base.textTheme),
    primaryTextTheme: _buildPortfolioTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildPortfolioTextTheme(base.accentTextTheme),
    iconTheme: base.iconTheme.copyWith(color: portfolioGrey300),
    dividerTheme: DividerThemeData(color: portfolioGrey200),
    dividerColor: portfolioGrey200,
  );
}

TextTheme _buildPortfolioTextTheme(TextTheme base) {
  return GoogleFonts.poppinsTextTheme(
    base
        .copyWith(
          headline5: base.headline5?.copyWith(
            fontWeight: FontWeight.w500,
          ),
          headline6: base.headline6?.copyWith(
            fontSize: 18,
          ),
          caption: base.caption?.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          bodyText1: base.bodyText1?.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          bodyText2: base.bodyText2,
          subtitle1: base.subtitle1,
          headline4: base.headline4,
          button: base.button?.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: portfolioWhite,
          ),
        )
        .apply(
          displayColor: portfolioGrey700,
          bodyColor: portfolioGrey500,
        ),
  );
}

const ColorScheme _portfolioLightScheme = ColorScheme(
  primary: portfolioBlue,
  primaryVariant: portfolioBlue,
  secondary: portfolioGreen,
  secondaryVariant: portfolioGreen,
  surface: portfolioGrey100,
  background: portfolioWhite,
  error: portfolioRed,
  onPrimary: portfolioWhite,
  onSecondary: portfolioWhite,
  onSurface: portfolioBlack,
  onBackground: portfolioBlack,
  onError: portfolioWhite,
  brightness: Brightness.light,
);
