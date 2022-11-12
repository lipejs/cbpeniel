import 'package:flutter/material.dart';

class Livros extends StatelessWidget {
  const Livros({super.key, required this.livros});

  final List<Map> livros;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: livros.map(
        (lv) {
          return Container(
            // width: double.infinity,
            // height: 100,
            margin: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                overlayColor: MaterialStateProperty.all(Colors.grey[100]),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: const BorderSide(width: 2.0, color: Colors.white30),
                  ),
                ),
              ),
              onPressed: () {
                print(lv['nome']);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(198, 255, 145, 0),
                            borderRadius: BorderRadius.circular(15)),
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        child: Text(
                          lv['sigla'].toString(),
                          style: const TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ),
                      Text(
                        lv['nome'].toString(),
                        style: const TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_circle_right_outlined),
                    color: Colors.white,
                  )
                ],
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
