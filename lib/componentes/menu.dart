import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key, required this.context});

  final BuildContext context;

  title() {
    return Row(
      children: [
        SizedBox(
          width: 30,
          child: Image.asset('lib\\imagem\\logo.png', fit: BoxFit.cover),
        ),
        Text(
          "Comunidade Bíblica Peniel",
          style: Theme.of(context).textTheme.headline1,
        ),
      ],
    );
  }

  drawer() {
    return const Drawer(
      width: 275,
      backgroundColor: Colors.white,
      elevation: 5,
    );
  }

  actions() {
    return <Widget>[
      IconButton(onPressed: () {}, icon: const Icon(Icons.circle_notifications))
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
