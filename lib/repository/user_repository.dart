import 'dart:convert';

import 'package:aulahttp/models/user.dart';
import 'package:http/http.dart' as http;

class UserTepository {
  Future<List<Data>> GetUser() async {
    final url = Uri.parse('https://reqres.in/api/users?page=2');
    List<Data> lista = [];
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      result['data'].forEach(
        (item) => lista.add(
          Data.fromJson(item),
        ),
      );
      return lista;
    } else {
      throw Exception('erro ao acessar os dados');
    }
  }
}
