import 'package:ltv/Repository/list_document_repository.dart';
import 'package:ltv/models/list_document_model.dart';

class ListDocumentController {
  final ListDocumentRepo _listDocumentRepo;
  ListDocumentController(this._listDocumentRepo);
  Future<ListDocumentModel> fetchListDocument() async {
    return _listDocumentRepo.getListDocumentModel();
  }
}
