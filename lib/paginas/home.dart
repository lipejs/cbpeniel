import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
                  // Text(
                  //   "Comunidade Bíblica",
                  //   style: TextStyle(
                  //     fontFamily: 'Poppins',
                  //     fontSize: 12,
                  //     fontWeight: FontWeight.normal,
                  //     color: Color.fromARGB(255, 216, 216, 216),
                  //   ),
                  // ),
                  Text(
                    "  CB Peniel",
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
                padding: EdgeInsets.all(7.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 41,
                    height: 32,
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
      backgroundColor: Colors.black38,
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Boa noite, Felipe!',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Great_Vibes',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Versículo do dia',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Cada um dê conforme determinou em seu coração, não com pesar ou por obrigação, pois Deus ama quem dá com alegria.',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                              backgroundColor: Colors.white,
                              color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '2 Coríntios 9:7',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                // backgroundColor: Colors.white,
                                // color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Destaques',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
                CarouselSlider(
                    items: [
                      Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, -5),
                              spreadRadius: 2,
                              blurRadius: 8,
                              color: Color.fromARGB(95, 255, 255, 255),
                            ),
                          ],
                        ),
                        child: Image.asset('lib\\imagem\\perfil.png',
                            fit: BoxFit.cover),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, -5),
                              spreadRadius: 2,
                              blurRadius: 8,
                              color: Color.fromARGB(95, 255, 255, 255),
                            ),
                          ],
                        ),
                        child: Image.asset('lib\\imagem\\perfil.png',
                            fit: BoxFit.cover),
                      ),
                    ],
                    options: CarouselOptions(
                        enlargeCenterPage: true, aspectRatio: 2)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Videos',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                      ),
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
