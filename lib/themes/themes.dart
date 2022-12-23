import 'package:flutter/material.dart';

class mythemedata {
  static const Color yellowColor=Color.fromRGBO(250, 204, 29, 1.0);
  static const Color blackColor=Color.fromRGBO(36, 36, 36, 1.0);
  static const Color goldColor=Color.fromARGB(255, 183, 147, 95);
  static const Color darkColor=Color.fromRGBO(20, 26, 46, 1.0);
  static ThemeData lightTheme=ThemeData(

   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     backgroundColor: goldColor,
     selectedItemColor: blackColor,
     unselectedItemColor: Colors.white,
     ),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: goldColor,
        onPrimary: blackColor,
        secondary: Colors.white,
        onSecondary: goldColor,
        error: Colors.red,
        onError: Colors.white,
        background: Colors.transparent,
        onBackground: goldColor,
        surface: goldColor,
        onSurface: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      headline1:  TextStyle(
        fontSize: 30,
        color: blackColor,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 30,
        color: goldColor,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  static ThemeData darkTheme=ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
  backgroundColor: darkColor,
    selectedItemColor: yellowColor,
    unselectedItemColor:Colors.white ,
  ),
      scaffoldBackgroundColor: Colors.transparent,
  colorScheme: ColorScheme(
  brightness: Brightness.dark,
  primary: darkColor,
  onPrimary: yellowColor,
  secondary: Colors.white,
  onSecondary: yellowColor,
  error: Colors.red,
  onError: Colors.white,
  background: Colors.transparent,
  onBackground: Colors.white,
  surface: yellowColor,
  onSurface: darkColor,
  ),
  appBarTheme: AppBarTheme(
  color: Colors.transparent,
  elevation: 0.0,
  centerTitle: true,
  ),
  textTheme: TextTheme(
  headline1:  TextStyle(
  fontSize: 30,
  color: yellowColor,
  fontWeight: FontWeight.bold,
  ),
  headline2: TextStyle(
  fontSize: 30,
  color: Colors.white,
  fontWeight: FontWeight.bold,
  ),
  ),
  );
}
