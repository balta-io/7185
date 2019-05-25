import 'package:flutter/material.dart';

import 'light.dart';

ThemeData buildTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    accentColor: primaryColor,
    fontFamily: 'Montserrat',
    textTheme: TextTheme(
      body1: TextStyle(
        fontSize: 14.0,
        //fontFamily: 'Hind',
      ),
    ),
    buttonColor: Color(0xFF00C569),
    // buttonTheme: ,
    scaffoldBackgroundColor: backgroundColor,
    cardColor: Colors.white,    
  );
}