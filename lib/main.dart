import 'package:cbpeniel/paginas/biblia.dart';
import 'package:cbpeniel/paginas/eventos.dart';
import 'package:cbpeniel/paginas/home.dart';
import 'package:cbpeniel/paginas/youtube.dart';
import 'package:flutter/material.dart';

import 'componentes/geral/navegacao.dart';
import 'componentes/geral/tema.dart';
import 'paginas/menu.dart';

void main() {
  runApp(const MyPage());
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final ThemeData theme = Tema().theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
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
      bottomNavigationBar: Navegacao(
        paginaAtual: _paginaAtual,
        pageController: pc,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: setPaginaAtual,
        controller: pc,
        children: [
          Home(),
          Biblia(pageController: pc),
          Youtube(pageController: pc),
          Eventos(pageController: pc),
          Menus(),
        ],
      ),
    );
  }
}
