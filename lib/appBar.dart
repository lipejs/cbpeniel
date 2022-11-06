import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
        color: Theme.of(context).colorScheme.secondary,
      ),
      title: Row(
        children: [
          SizedBox(
            width: 30,
            child: Image.asset('assents\\imagem\\logo.png', fit: BoxFit.cover),
          ),
          Text(
            "Comunidade Bíblica Peniel",
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      ),
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      actions: <Widget>[
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.circle_notifications))
      ],
      actionsIconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.secondary, size: 23),
    );
  }
}
