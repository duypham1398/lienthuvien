import 'dart:convert';

/// Status : 200
/// IsSuccess : true
/// Message : null
/// Data : [{"TypeBookID":3,"TypeBookName":"Bài trích","TongSo":124343,"ID":0},{"TypeBookID":2,"TypeBookName":"Sách","TongSo":7036,"ID":0},{"TypeBookID":6,"TypeBookName":"Luận văn, luận án","TongSo":2833,"ID":0},{"TypeBookID":701,"TypeBookName":"Đề tài nghiên cứu","TongSo":195,"ID":0}]
/// Total : 4

ListDocumentModel listDocumentModelFromJson(String str) =>
    ListDocumentModel.fromJson(json.decode(str));
String listDocumentModelToJson(ListDocumentModel data) =>
    json.encode(data.toJson());

class ListDocumentModel {
  ListDocumentModel({
    int? status,
    bool? isSuccess,
    dynamic message,
    List<Data>? data,
    int? total,
  }) {
    _status = status;
    _isSuccess = isSuccess;
    _message = message;
    _data = data;
    _total = total;
  }

  ListDocumentModel.fromJson(dynamic json) {
    _status = json['Status'];
    _isSuccess = json['IsSuccess'];
    _message = json['Message'];
    if (json['Data'] != null) {
      _data = [];
      json['Data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _total = json['Total'];
  }
  int? _status;
  bool? _isSuccess;
  dynamic _message;
  List<Data>? _data;
  int? _total;
  ListDocumentModel copyWith({
    int? status,
    bool? isSuccess,
    dynamic message,
    List<Data>? data,
    int? total,
  }) =>
      ListDocumentModel(
        status: status ?? _status,
        isSuccess: isSuccess ?? _isSuccess,
        message: message ?? _message,
        data: data ?? _data,
        total: total ?? _total,
      );
  int? get status => _status;
  bool? get isSuccess => _isSuccess;
  dynamic get message => _message;
  List<Data>? get data => _data;
  int? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Status'] = _status;
    map['IsSuccess'] = _isSuccess;
    map['Message'] = _message;
    if (_data != null) {
      map['Data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['Total'] = _total;
    return map;
  }
}

/// TypeBookID : 3
/// TypeBookName : "Bài trích"
/// TongSo : 124343
/// ID : 0

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    int? typeBookID,
    String? typeBookName,
    int? tongSo,
    int? id,
  }) {
    _typeBookID = typeBookID;
    _typeBookName = typeBookName;
    _tongSo = tongSo;
    _id = id;
  }

  Data.fromJson(dynamic json) {
    _typeBookID = json['TypeBookID'];
    _typeBookName = json['TypeBookName'];
    _tongSo = json['TongSo'];
    _id = json['ID'];
  }
  int? _typeBookID;
  String? _typeBookName;
  int? _tongSo;
  int? _id;
  Data copyWith({
    int? typeBookID,
    String? typeBookName,
    int? tongSo,
    int? id,
  }) =>
      Data(
        typeBookID: typeBookID ?? _typeBookID,
        typeBookName: typeBookName ?? _typeBookName,
        tongSo: tongSo ?? _tongSo,
        id: id ?? _id,
      );
  int? get typeBookID => _typeBookID;
  String? get typeBookName => _typeBookName;
  int? get tongSo => _tongSo;
  int? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['TypeBookID'] = _typeBookID;
    map['TypeBookName'] = _typeBookName;
    map['TongSo'] = _tongSo;
    map['ID'] = _id;
    return map;
  }
}
