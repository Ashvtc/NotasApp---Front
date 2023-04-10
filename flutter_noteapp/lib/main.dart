import 'package:flutter/material.dart';
import 'package:flutter_noteapp/vistas/pantalla_inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NoteApp',
      home: const PantallaInicio(),
      theme: ThemeData(
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
          //Botones 'Login'/'Crear Cuenta'
          displaySmall: TextStyle(
              fontSize: 16.0,
              //fontFamily:,
              fontWeight: FontWeight.bold,
              color: Color(0XFF1F1F1F),
          ),
        ),
      ),
    );
  }
}