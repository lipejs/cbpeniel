import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../componentes/pagina_home/carousel.dart';

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
                  items: const [
                    Carousel(
                        url:
                            'https://lh3.googleusercontent.com/fife/AAbDypCBe8N92sBFrDn6oTwEncuHaaT3pTFnDGu8Rmy7SSGog8ztoYTY_3JKY25nkKCIVqYkeuUI-uAE6Hi4A6yx9QIltcJGRZcbQr-dCjgsbeF1XRQ4B0lNOLhbun1rb48nliRmoQAUdKCNfWr4h7j6HGzKqbi5xXWGeh1bC-Ro4dhNH8VQDU6Y8u33SCOC67aCEOUhKid-AKKdnJkwP0ZoLNNeI1H3E88kO1wzDupdE-NmMIv-HYZkpcweoukzqzflOyfFWbMWKvD2ch43402YjCKP_wRldRDT9aBRpFRjNy_4WpuYCrpFB34WinZW7YfTNWd1VjUk2XGi2ZeqCexABqlbZsB6NgIRxPFgr7RkgY3tadlu_kRCbuiMyEhYL3YQ_dLi8sWT71B8wYPMVifcrXVk6s-p0QyoOKZYS_KCSZtded3DMufX-gGg2k7eJiuHmJE9pkXHrxIKC3N47Bgko6SRrYqVcTyt5WxnDabKx47v_CZjHASa0dFZR8wGp1xGB76N2AAuKOuuAHTOR1AysTZGQQnZgcwODNamUlcYVQ3qBkIJhdJw27jGRih_kJRjnfL_FbDRj2MaQzk9tj-15hgEoYSCxfIrT7ewvvQ7AqMwtAGDbziNxv5GgbnEUWhA-doFwi2hNqUrtHSmPUUMlUAO98-5F8zLDdPiVHIRhy5Ap9JNKhP7W5HGCksKTe0UWVFV_hr15r3BVHhxahHjEEOF0skyo6TeSLvgZMSrFp3Bl8Bcpe5BWGPa8efQQ6IOudLTNSUieypXMTYVL2Yy0le-ZHRPyp-_dOQwVbMaTEm1yWMjeEHyIdpqfqRsDudztWy_9xG4RnMXze6BtaHSPjdrDXwW2pZ1SCPdSxQZ6BJxocVRsIZ3bhSoPV5VbCrefK_ktNjrKfj1rxpdFLKN50J9TFXWhnRoqt_wWxiu81tBCU4o9-97Qt4pgIOvH8c0-92Pg3LCW88zJ95rCnX8jdr3qEtMikfejfdz3w7Xl9deinmWfxU7B2h3acW8wyw3WSHlRoF78CokXegwcQtDUFiEUf9dPBJrrIVQMNiuORuY-HXzu0WEtjV0Mv6-jV2z0iapAB3wVQNxffkmTw-3O_OznnangGy9YUeo51CAcJeZi67D9pW3rf_rKjzOFUrmI9FTdKAxG2bRbLQEaPLF_zNioupDKV67FQ2C3u84ehjw1MLcHdc7U6NwIdcsHOFQ-QwSsPjCJsyVP7uMiTYh0C4jOQVEei3rKSKN8gXJ-qXMUn3hKJVlZ1Zna7WEnM-ORw2oqZ62sXs4uXW12yVK95GV54dm4poA9ptBiFr6XJKNUDZ1-b_vsnlGcIT10RSpA0xrxrn_nWenXihkm-MKZWspOefZERT9AHOSCEzc7lAUOUJDzQ0dnGPkw7eSZkEa2oQHXnUEEWEm5ZpZHqVCjpd7YCZBdCo94v5hzrCOQna775vTREtE_yjIqdJQptftLSpK_NktlPrhLvT_L2U=w1920-h892'),
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
