import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key, required this.context});

  final BuildContext context;

  title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 30,
          child: Image.asset('lib\\imagem\\logo.png', fit: BoxFit.cover),
        ),
        Text(
          "Comunidade Bíblica Peniel",
          style: Theme.of(context).textTheme.headline1,
        ),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.account_circle_rounded)),
      ],
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
