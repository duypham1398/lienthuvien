import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ltv/constants/api.dart';

Future<List<dynamic>> getListDocument() async {
  final response = await http.get(Uri.parse(URL_TYPE_DOCUMENT));
  if (response.statusCode != 200) {
    throw Exception("API error");
  }
  return jsonDecode(response.body)['Data'];
}
