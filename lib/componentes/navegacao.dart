import 'package:flutter/material.dart';

class Navegacao extends StatelessWidget {
  const Navegacao({
    super.key,
    required this.paginaAtual,
    required this.pageController,
  });

  final int paginaAtual;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: paginaAtual,
      elevation: 10,
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      fixedColor: Theme.of(context).colorScheme.secondary,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicial',
          backgroundColor: Colors.grey,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Biblía',
          backgroundColor: Colors.grey,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.smart_display_sharp),
          label: 'YouTube',
          backgroundColor: Colors.grey,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.photo),
          label: 'Galeria',
          backgroundColor: Colors.grey,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_agenda),
          label: 'Agenda',
          backgroundColor: Colors.grey,
        ),
      ],
      onTap: (pagina) {
        pageController.animateToPage(
          pagina,
          duration: const Duration(milliseconds: 400),
          curve: Curves.ease,
        );
      },
    );
  }
}
