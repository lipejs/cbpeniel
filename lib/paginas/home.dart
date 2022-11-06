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
              Image.asset(
                'lib\\imagem\\papel.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        )
      ],
    );
  }
}
