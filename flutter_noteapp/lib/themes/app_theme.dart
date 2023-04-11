import 'package:flutter/material.dart';

class AppTheme{

  static final ThemeData lightTheme = ThemeData(
        primaryColor: const Color(0xFFEDC123),
        colorScheme: ColorScheme.fromSwatch()
          .copyWith(secondary: Color(0XFFFAFAFA)),
        highlightColor:  const Color(0XFFFAFAFA),
        textTheme: const TextTheme(

          //Titulo 'Note'
          displayLarge: TextStyle(
              fontSize: 32.0,
              //fontFamily:,
              fontWeight: FontWeight.bold,
              color: Color(0xFF000000),
          ),

          //Titulo 'App'
          displayMedium: TextStyle(
              fontSize: 32.0,
              //fontFamily:,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEDC123),
          ),

          //'Login'/'Crear Cuenta'
          displaySmall: TextStyle(
              fontSize: 16.0,
              //fontFamily:,
              fontWeight: FontWeight.bold,
              color: Color(0XFF1F1F1F),
          ),

          //'Usuario'/'Contraseña'
          bodyMedium: TextStyle(
              fontSize: 14.0,
              //fontFamily:,
              fontWeight: FontWeight.normal,
              color: Color(0XFF1F1F1F),
          ),
        ),
      );

}