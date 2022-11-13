import 'package:flutter/material.dart';

class Tema {
  ThemeData get theme {
    return ThemeData(
      colorScheme: ThemeData.dark().colorScheme.copyWith(
            primary: const Color.fromARGB(255, 255, 145, 0),
            secondary: Colors.white,
            tertiary: Colors.black,
          ),
      textTheme: ThemeData.dark().textTheme.copyWith(
            headline1: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            //linha dos subtitulos
            headline2: const TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins',
              color: Colors.white,
            ),
            //Linha do app bar
            headline3: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 216, 216, 216),
            ),

            headline4: const TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 17,
                backgroundColor: Color.fromARGB(85, 0, 0, 0),
                color: Colors.white),
          ),
    );
  }
}
