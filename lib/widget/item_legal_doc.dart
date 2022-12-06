import 'package:flutter/material.dart';

class ItemLegalDoc extends StatelessWidget {
  ItemLegalDoc({Key? key, required this.kyhieu, this.datebh, this.trichyeu})
      : super(key: key);
  String? kyhieu;
  String? datebh;
  String? trichyeu;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.5,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Icon(Icons.file_download),
          ),
          Expanded(
            flex: 3,
            child: Text(kyhieu!),
          ),
          Expanded(
            flex: 2,
            child: Text(datebh!),
          ),
          Expanded(
            flex: 2,
            child: Text(trichyeu!),
          ),
        ],
      ),
    );
  }
}
