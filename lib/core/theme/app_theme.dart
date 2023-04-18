import 'package:flutter/material.dart';
import 'theme_colors.dart';
import 'theme_text_styles.dart';

final lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: ThemeColors.primary,
    scaffoldBackgroundColor: ThemeColors.backgroundColor,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    appBarTheme:  AppBarTheme(
      shadowColor: Colors.black.withOpacity(0.2),
      backgroundColor: ThemeColors.white,
      surfaceTintColor: ThemeColors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: ThemeTextStyles.appTitle,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ThemeColors.white,
      selectedItemColor: ThemeColors.primary,
      unselectedItemColor: ThemeColors.grey,
      selectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
      elevation: 3,
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStatePropertyAll(0),
        backgroundColor: MaterialStatePropertyAll(ThemeColors.primary),
        foregroundColor: MaterialStatePropertyAll(ThemeColors.white),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        minimumSize: MaterialStatePropertyAll(
          Size(double.infinity, 48),
        ),
        maximumSize: MaterialStatePropertyAll(
          Size(double.infinity, 48),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: ThemeColors.backgroundColor,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: ThemeColors.primary,
          width: 1,
        ),
      ),
      labelStyle: TextStyle(
        color: ThemeColors.grey,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: TextStyle(
        color: ThemeColors.grey,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
    textTheme: TextTheme(bodyText1: TextStyle(fontSize: 22, fontWeight: FontWeight.w700,))
);
