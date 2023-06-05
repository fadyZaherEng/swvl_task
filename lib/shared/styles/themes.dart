import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightTheme() => ThemeData(
      scaffoldBackgroundColor: Colors.cyan,
      primarySwatch: Colors.cyan,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.cyan,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.cyan,
          statusBarIconBrightness: Brightness.light,
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actionsIconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.cyan,
        elevation: 0.0,
      ),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: HexColor('180040')),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
        ),
        bodyText2: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
          color: Colors.black,
        ),
        caption: TextStyle(
          color: Colors.black,
        ),
        subtitle1: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      cardTheme: const CardTheme(
        color: Colors.white,
      ),
      hintColor: Colors.white,
      brightness: Brightness.light,
      primaryColor: Colors.cyan,
      drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.white,
      ),
    );
ThemeData darkTheme() => ThemeData(
    primarySwatch: Colors.cyan,
    scaffoldBackgroundColor: HexColor('000028'),
    appBarTheme: AppBarTheme(
      backgroundColor: HexColor('00028'),
      elevation: 0,
      titleTextStyle: const TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.bold,
        color: Colors.cyan,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: HexColor('000028'),
        statusBarIconBrightness: Brightness.light,
      ),
      iconTheme: const IconThemeData(
        color: Colors.cyan,
      ),
      actionsIconTheme: const IconThemeData(
        color: Colors.cyan,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.cyan,
      backgroundColor: HexColor('000028'),
      unselectedItemColor: Colors.white,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: Colors.white,
      ),
      subtitle1: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 15,
        color: Colors.white,
      ),
      caption: TextStyle(
        color: Colors.white,
      ),
    ),
    cardTheme: CardTheme(
      color: HexColor('180040'),
    ),
    hintColor: Colors.white,
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    drawerTheme: DrawerThemeData(
      elevation: 0,
      backgroundColor: HexColor('000028'),
    ),
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: HexColor('000028')));
