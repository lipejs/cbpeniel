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
  ThemeData branco = ThemeData(
    colorScheme: ThemeData.light().colorScheme.copyWith(
          primary: Colors.yellow,
          secondary: Colors.white,
          tertiary: Colors.black,
        ),
    textTheme: ThemeData.light().textTheme.copyWith(
        // Thema do Valor
        headline1: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 20,
          // fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        // Thema do Título da lista
        headline3: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        // Thema do subtítulo da lista
        headline4: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 13,
          color: Colors.grey,
        )),
  );

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Theme.of(context).colorScheme.secondary,
        ),
        title: Text(
          "Comunidade Bíblica Peniel",
          style: Theme.of(context).textTheme.headline1,
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
      body: SizedBox(
          height: 120,
          width: 1080,
          child: Image.asset(
            'assents\\imagem\\papel.png',
            fit: BoxFit.cover,
          )),
    );
  }
}
