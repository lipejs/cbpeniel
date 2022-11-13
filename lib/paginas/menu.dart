import 'package:flutter/material.dart';

class Menus extends StatelessWidget {
  const Menus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Menu',
          style: Theme.of(context).textTheme.headline3,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Colors.black38,
    );
  }
}
