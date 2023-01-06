import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ltv/constants/api.dart';

Future<List<dynamic>> getListNews() async {
  final response = await http.get(Uri.parse(URL_NEWS));
  if (response.statusCode != 200) {
    throw Exception("API error");
  }
  return jsonDecode(response.body)['Data'];
}
