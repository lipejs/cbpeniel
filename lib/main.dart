import 'package:cbpeniel/componentes/Navegacao.dart';
import 'package:cbpeniel/componentes/menu.dart';
import 'package:cbpeniel/paginas/biblia.dart';
import 'package:cbpeniel/paginas/galeria.dart';
import 'package:cbpeniel/paginas/home.dart';
import 'package:cbpeniel/paginas/youtube.dart';
import 'package:flutter/material.dart';

import 'componentes/tema.dart';
import 'paginas/agenda.dart';

void main() {
  runApp(const MyPage());
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final ThemeData branco = Tema().branco;

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
  late int _paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: _paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      _paginaAtual = pagina;
    });
  }

  atualizar() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.secondary),
        title: Menu(
          context: context,
        ).title(),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        actions: Menu(context: context).actions(),
        actionsIconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.secondary, size: 23),
      ),
      bottomNavigationBar: Navegacao(
        paginaAtual: _paginaAtual,
        pageController: pc,
      ),
      drawer: Menu(context: context).drawer(),
      body: PageView(
        onPageChanged: setPaginaAtual,
        controller: pc,
        children: const [
          Home(),
          Biblia(),
          Youtube(),
          Galeria(),
          Agenda(),
        ],
      ),
    );
  }
}
