import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api_destaques {
  // ignore: non_constant_identifier_names
//   Future<String> get_Api() async {
//     final link =
//         Uri.parse('https://cbpapi.felipe-souza16.repl.co/api/select/destaques');
//     final respose = await http.get(link);
//     return respose.body;
//   }
// }

  Future<String> loadDestaques(int num, String url) async {
    final response = await http.get(Uri.parse(
        'https://cbpapi.felipe-souza16.repl.co/api/select/destaques'));
    var data = json.decode(response.body);
    var dat = data[num][url];
    return dat.toString();
  }

  Future<int> len() async {
    final response = await http.get(
        Uri.parse('https://cbpapi.felipe-souza16.repl.co/api/max/destaques'));
    var data = json.decode(response.body);
    return data[0][0];
  }
  //   Future<String> loadDestaques(int num, String url) async {
  //   final response = await http.get(Uri.parse(
  //       'https://cbpapi.felipe-souza16.repl.co/api/select/destaques'));
  //   var data = json.decode(response.body);
  //   return data[num][url];
  // }
}
