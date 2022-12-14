import 'package:cbpeniel/componentes/geral/voltar.dart';
import 'package:flutter/material.dart';

class Youtube extends StatelessWidget {
  const Youtube({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(children: [
          Voltar(pageController: pageController),
          Text(
            'Culto Online / Videos',
            style: Theme.of(context).textTheme.headline3,
          )
        ]),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Colors.black38,
    );
  }
}
