import 'package:flutter/material.dart';

import '../componentes/geral/voltar.dart';

class Eventos extends StatelessWidget {
  const Eventos({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(children: [
          Voltar(pageController: pageController),
          Text(
            'Eventos',
            style: Theme.of(context).textTheme.headline3,
          )
        ]),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Colors.black38,
    );
  }
}
