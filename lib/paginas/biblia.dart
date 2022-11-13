import 'package:flutter/material.dart';

import '../componentes/geral/voltar.dart';
import '../componentes/pagina_biblia/livros.dart';

final List<Map> livros = [
  {'sigla': 'Gn', 'nome': 'Genêsis'},
  {'sigla': 'Êx', 'nome': 'Êxodo'},
  {'sigla': 'Lv', 'nome': 'Levítico'},
  {'sigla': 'Nm', 'nome': 'Números'},
  {'sigla': 'Dt', 'nome': 'Deuteronômio'},
  {'sigla': 'Js', 'nome': 'Josué'},
  {'sigla': 'Jz', 'nome': 'Juízes'},
  {'sigla': 'Rt', 'nome': 'Rute'},
  {'sigla': '1Sm', 'nome': '1 Samuel'},
  {'sigla': '2Sm', 'nome': '2 Samuel'},
  {'sigla': '1Rs', 'nome': '1 Reis'},
  {'sigla': '2Rs', 'nome': '2 Reis'},
  {'sigla': '1Cr', 'nome': '1 Crônicas'},
  {'sigla': '2Cr', 'nome': '2 Crônicas'},
  {'sigla': 'Ed', 'nome': 'Esdras'},
  {'sigla': 'Ne', 'nome': 'Neemias'},
  {'sigla': 'Et', 'nome': 'Ester'},
  {'sigla': 'Jó', 'nome': 'Jó'},
  {'sigla': 'Sl', 'nome': 'Salmos'},
  {'sigla': 'Pv', 'nome': 'Provérbios'},
  {'sigla': 'Ec', 'nome': 'Eclesiastes'},
  {'sigla': 'Ct', 'nome': 'Cantares'},
  {'sigla': 'Is', 'nome': 'Isaías'},
  {'sigla': 'Jr', 'nome': 'Jeremias'},
  {'sigla': 'Lm', 'nome': 'Lamentações'},
  {'sigla': 'Ez', 'nome': 'Ezequiel'},
  {'sigla': 'Dn', 'nome': 'Daniel'},
  {'sigla': 'Os', 'nome': 'Oseias'},
  {'sigla': 'Jl', 'nome': 'Joel'},
  {'sigla': 'Am', 'nome': 'Amós'},
  {'sigla': 'Ob', 'nome': 'Obadias'},
  {'sigla': 'Jn', 'nome': 'Jonas'},
  {'sigla': 'Mq', 'nome': 'Miqueias'},
  {'sigla': 'Mq', 'nome': 'Naum'},
  {'sigla': 'Hc', 'nome': 'Habacuque'},
  {'sigla': 'Sf', 'nome': 'Sofonias'},
  {'sigla': 'Ag', 'nome': 'Ageu'},
  {'sigla': 'Zc', 'nome': 'Zacarias'},
  {'sigla': 'Ml', 'nome': 'Malaquias'},
  {'sigla': 'Mt', 'nome': 'Mateus'},
  {'sigla': 'Mc', 'nome': 'Marcos'},
  {'sigla': 'Lc', 'nome': 'Lucas'},
  {'sigla': 'Jo', 'nome': 'João'},
  {'sigla': 'At', 'nome': 'Atos dos Apóstolos'},
  {'sigla': 'Rm', 'nome': 'Romanos'},
  {'sigla': '1Co', 'nome': '1 Coríntios'},
  {'sigla': '2Co', 'nome': '2 Coríntios'},
  {'sigla': 'Gl', 'nome': 'Gálatas'},
  {'sigla': 'Ef', 'nome': 'Efésios'},
  {'sigla': 'Fp', 'nome': 'Filipenses'},
  {'sigla': 'Cl', 'nome': 'Colossenses'},
  {'sigla': '1Ts', 'nome': '1 Tessalonicenses'},
  {'sigla': '2Ts', 'nome': '2 Tessalonicenses'},
  {'sigla': '1Tm', 'nome': '1 Timóteo'},
  {'sigla': '2Tm', 'nome': '2 Timóteo'},
  {'sigla': 'Tt', 'nome': 'Tito'},
  {'sigla': 'Fm', 'nome': 'Filemom'},
  {'sigla': 'Hb', 'nome': 'Hebreus'},
  {'sigla': 'Tg', 'nome': 'Tiago'},
  {'sigla': '1Pe', 'nome': '1 Pedro'},
  {'sigla': '2Pe', 'nome': '2 Pedro'},
  {'sigla': '1Jo', 'nome': '1 João'},
  {'sigla': '2Jo', 'nome': '2 João'},
  {'sigla': '3Jo', 'nome': '3 João'},
  {'sigla': 'Jd', 'nome': 'Judas'},
  {'sigla': 'Ap', 'nome': 'Apocalipse'},
];

class Biblia extends StatelessWidget {
  const Biblia({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(children: [
          Voltar(pageController: pageController),
          Text(
            'Bíblia',
            style: Theme.of(context).textTheme.headline3,
          )
        ]),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Colors.black38,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 0.5,
              width: double.infinity,
              color: Colors.grey,
            ),
            SizedBox(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Livros',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  OutlinedButton(
                    autofocus: true,
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      overlayColor: MaterialStateProperty.all(Colors.grey[100]),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: const BorderSide(
                              width: 2.0, color: Colors.white30),
                        ),
                      ),
                    ),
                    child: const Text('NVI'),
                  )
                ],
              ),
            ),
            Livros(livros: livros),
          ],
        ),
      ),
    );
  }
}
