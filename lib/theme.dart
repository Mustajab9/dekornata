// ignore_for_file: deprecated_member_use
// ignore_for_file: prefer_const_constructors

import 'package:dekornata/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18),
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outLineInputBorder(),
    focusedBorder: outLineInputBorder(),
    border: outLineInputBorder(),
  );
}

OutlineInputBorder outLineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
}
