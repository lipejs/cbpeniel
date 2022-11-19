import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CarouselObject {
  final String id;
  final String url;

  CarouselObject({required this.id, required this.url});

  factory CarouselObject.fromJson(dynamic json) {
    return CarouselObject(
        id: json['id'].toString(), url: json['url'].toString());
  }

  static List<CarouselObject> carouselFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      // print(data);
      return CarouselObject.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'id: $id , url: $url';
  }
}

class CarouselApi {
  static Future<List<CarouselObject>> getCarousel() async {
    var uri =
        Uri.parse('https://cbpapi.felipe-souza16.repl.co/api/select/destaques');
    final response = await http.get(uri);
    List data = json.decode(response.body);
    print(data);
    // List _temp = [];
    // for (var i in data[0]) {
    //   _temp.add(data[i][i]);
    //   print(i);
    //   print(_temp);
    // }
    return CarouselObject.carouselFromSnapshot(data);
  }
}
