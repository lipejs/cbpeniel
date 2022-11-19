import 'dart:convert';

import 'package:cbpeniel/componentes/pagina_home/carouselApi.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../componentes/pagina_home/carousel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<CarouselObject> _CarouselObjet;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    get_Carousel();
  }

  Future<void> get_Carousel() async {
    _CarouselObjet = await CarouselApi.getCarousel();
    setState(() {
      _isLoading = false;
    });
    print(_CarouselObjet);
  }

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
                children: [
                  Text(
                    "  CB Peniel",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            ],
          ),
          centerTitle: false,
          backgroundColor: Theme.of(context).colorScheme.background,
          actions: [
            Padding(
                padding: const EdgeInsets.all(7.0),
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
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Boa noite, Felipe!',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Great_Vibes',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Versículo do dia',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      Text(
                          'Cada um dê conforme determinou em seu coração, não com pesar ou por obrigação, pois Deus ama quem dá com alegria.',
                          style: Theme.of(context).textTheme.headline4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('2 Coríntios 9:7',
                              style: Theme.of(context).textTheme.headline4),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Destaques',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
                CarouselSlider(
                  items: [
                    Carousel(
                      url: 'https://encurtador.com.br/oFSV7',
                      //   url:
                    ),
                    Carousel(
                      url:
                          'https://lh3.googleusercontent.com/pw/AL9nZEV0Xo5R-cLK-TgeVbXSnwZ-rO8mnSFOlQxU0aK6GPmAIc8MRjlV3HbeC-BKTv7v3l1u_N1eXywtEuAYqsbOcy_r0XNdg-JWKaiNtq0l_i0KaVrCy5clchqTgXXuNrodxorDauUbR96gcm9L8FDIbm5y5g=w732-h893-no?authuser=0',
                    )
                  ],
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    aspectRatio: 2,
                    autoPlay: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 1500),
                    autoPlayInterval: const Duration(seconds: 6),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Videos',
                        style: Theme.of(context).textTheme.headline2,
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
