import 'package:flutter/material.dart';

final _listaImagem = [
  {'id': 0, 'imagem': 'lib\\imagem\\papel.png'},
  {'id': 1, 'imagem': 'lib\\imagem\\papel.png'}
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 15),
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 35,
                      child: Image.asset(
                        'lib\\imagem\\logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text('Seja Bem Vindo!',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'OpenSans',
                        )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Videos',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'OpenSans',
                      )),
                ],
              ),
              Image.asset(
                'lib\\imagem\\papel.png',
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
      ],
    );
  }
}
