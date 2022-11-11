import 'package:flutter/material.dart';

import '../componentes/menu.dart';

final _listaImagem = [
  {'id': 0, 'imagem': 'lib\\imagem\\papel.png'},
  {'id': 1, 'imagem': 'lib\\imagem\\papel.png'}
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme:
              IconThemeData(color: Theme.of(context).colorScheme.secondary),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
                child: Image.asset('lib\\imagem\\logo.png', fit: BoxFit.cover),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Comunidade Bíblica",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 216, 216, 216),
                    ),
                  ),
                  Text(
                    "PENIEL",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 216, 216, 216),
                    ),
                  ),
                ],
              ),
            ],
          ),
          centerTitle: false,
          backgroundColor: Theme.of(context).colorScheme.background,
          actions: [
            Padding(
                padding: EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 30,
                    height: 45,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://lh3.googleusercontent.com/ogw/AOh-ky2tGZKimx5lskhRYNGizUyis7ukk9dCOsM5QlK8yBA=s32-c-mo',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )),
          ]),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 15),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 35,
                        child: Image.asset(
                          'lib\\imagem\\logo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text('Seja Bem Vindo!',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'OpenSans',
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
