import 'package:flutter/material.dart';

class Youtube extends StatelessWidget {
  const Youtube({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(children: [
          TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.navigate_before,
                color: Colors.grey,
              )),
          Text(
            'Youtube',
            style: Theme.of(context).textTheme.headline3,
          )
        ]),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Colors.black38,
    );
  }
}
