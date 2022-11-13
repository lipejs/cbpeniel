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
      backgroundColor: Theme.of(context).colorScheme.background,
      fixedColor: const Color.fromARGB(255, 255, 145, 0),
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicial',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Biblía',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.smart_display_sharp),
          label: 'Youtube',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_note),
          label: 'Eventos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Menu',
        ),
      ],
      onTap: (pagina) {
        pageController.animateToPage(
          pagina,
          duration: const Duration(milliseconds: 1),
          curve: Curves.ease,
        );
      },
    );
  }
}
