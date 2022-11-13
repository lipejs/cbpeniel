import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -5),
            spreadRadius: 2,
            blurRadius: 8,
            color: Colors.black,
          ),
        ],
      ),
      child: Image.network(url, fit: BoxFit.cover),
    );
  }
}
