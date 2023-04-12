import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = const Color(0xff5d9ced);
  static Color lightGreen = const Color(0xffdfecbd);
  static Color colorRed = const Color(0xffec4b4b);
  static Color colorGreen = const Color(0xff61e757);
  static Color colorBlack = const Color(0xff242424);
  static Color colorWhite = const Color(0xffFFFFFF);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimary,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: lightPrimary,
          onPrimary: colorWhite,
          secondary: lightGreen,
          onSecondary: colorWhite,
          error: Colors.red,
          onError: Colors.red,
          background: lightGreen ,
          onBackground: lightPrimary,
          surface: Colors.grey,
          onSurface: Colors.white),
      scaffoldBackgroundColor:lightGreen,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: lightPrimary,
          elevation: 0,
          iconTheme: IconThemeData(
            color: colorWhite,
          )),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 25,
          color: colorWhite,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          color: lightPrimary,
          fontWeight: FontWeight.w400,
        ),
        bodyLarge: TextStyle(
            fontSize: 20, color: colorBlack, fontWeight: FontWeight.bold),
        titleLarge: const TextStyle(
          fontSize: 30,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: lightPrimary,
        unselectedItemColor: Colors.grey,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colorWhite,
      ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: lightPrimary,
      hoverColor: Colors.white,
        splashColor: lightGreen,
    )
  );

}