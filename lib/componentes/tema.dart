import 'package:flutter/material.dart';

class Tema {
  ThemeData get branco {
    return ThemeData(
      primaryColorLight: const Color.fromARGB(255, 241, 241, 241),
      colorScheme: ThemeData.light().colorScheme.copyWith(
            primary: Colors.yellow,
            secondary: Colors.black,
            tertiary: Colors.white,
          ),
      textTheme: ThemeData.light().textTheme.copyWith(
            // Thema do Valor
            headline1: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            // Thema do Título da lista
            headline3: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            // Thema do subtítulo da lista
            headline4: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
    );
  }
}
