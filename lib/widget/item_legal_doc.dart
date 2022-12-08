import 'package:flutter/material.dart';

import '../constants/dismension_constants.dart';

class ItemLegalDoc extends StatelessWidget {
  ItemLegalDoc({Key? key, required this.kyhieu, this.datebh, this.trichyeu})
      : super(key: key);
  String? kyhieu;
  String? datebh;
  String? trichyeu;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: kMediumpading),
      // height: 48.5,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.file_download,
              ),
            ),
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
