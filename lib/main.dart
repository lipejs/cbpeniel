import 'package:cbpeniel/tema.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyPage());
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  ThemeData branco = Tema().branco;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: branco,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _listaImagem = [
    {'id': 0, 'imagem': 'assents\\imagem\\papel.png'},
    {'id': 0, 'imagem': 'assents\\imagem\\papel.png'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Theme.of(context).colorScheme.secondary,
        ),
        title: Row(
          children: [
            SizedBox(
              width: 30,
              child:
                  Image.asset('assents\\imagem\\logo.png', fit: BoxFit.cover),
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
      ),
      bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).colorScheme.tertiary,
          elevation: 15,
          // shape: BoxShap,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      iconSize: 25,
                      color: Theme.of(context).colorScheme.secondary,
                      tooltip: 'Open navigation menu',
                      icon: const Icon(Icons.home),
                      onPressed: () {},
                      alignment: AlignmentDirectional.bottomCenter,
                    ),
                    Text('Inicio')
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      iconSize: 25,
                      color: Theme.of(context).colorScheme.secondary,
                      tooltip: 'Open navigation menu',
                      icon: const Icon(Icons.home),
                      onPressed: () {},
                      alignment: AlignmentDirectional.bottomCenter,
                    ),
                    Text('Inicio')
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      iconSize: 25,
                      color: Theme.of(context).colorScheme.secondary,
                      tooltip: 'Open navigation menu',
                      icon: const Icon(Icons.home),
                      onPressed: () {},
                      alignment: AlignmentDirectional.bottomCenter,
                    ),
                    Text('Inicio')
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      // iconSize: 25,
                      color: Theme.of(context).colorScheme.secondary,
                      tooltip: 'Open navigation menu',
                      icon: const Icon(Icons.account_balance_sharp),
                      onPressed: () {},
                      alignment: AlignmentDirectional.bottomCenter,
                    ),
                    Text('Inicio')
                  ],
                ),
              ],
            ),
          )),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 15),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset(
                  'assents\\imagem\\papel.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
