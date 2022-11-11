import 'package:flutter/material.dart';

class Tema {
  ThemeData get theme {
    return ThemeData(
      colorScheme: ThemeData.dark().colorScheme.copyWith(
            primary: Colors.red,
            secondary: Colors.white,
            tertiary: Colors.black,
          ),
      textTheme: ThemeData.dark().textTheme.copyWith(
            // Thema do Valor
            headline1: const TextStyle(
              // fontFamily: '',
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            // Thema do Título da lista
            headline3: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 18,
              // fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            // Thema do subtítulo da lista
            headline4: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
    );
  }
}
