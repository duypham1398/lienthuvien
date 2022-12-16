import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ltv/models/list_document_model.dart';

import '../constants/api.dart';

abstract class ListDocumentRepo {
  Future<ListDocumentModel> getListDocumentModel();
}

class ListDocumentRepository implements ListDocumentRepo {
  @override
  Future<ListDocumentModel> getListDocumentModel() async {
    // ListDocumentModel ListDocumentData;
    final response = await http.get(Uri.parse(URL_TYPE_DOCUMENT));
    var data = jsonDecode(response.body).toString();
    if (response.statusCode == 200) {
      return ListDocumentModel.fromJson(data);
    }
    // TODO: implement getListDocumentModelList
    throw UnimplementedError();
  }
}
