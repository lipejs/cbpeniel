import 'package:flutter/material.dart';

class Voltar extends StatelessWidget {
  const Voltar({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          pageController.animateToPage(
            0,
            duration: const Duration(milliseconds: 1),
            curve: Curves.ease,
          );
        },
        child: const Icon(
          Icons.navigate_before,
          color: Colors.grey,
        ));
  }
}
