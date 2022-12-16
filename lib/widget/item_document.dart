import 'package:flutter/material.dart';
import 'package:ltv/constants/color_constants.dart';

import '../constants/dismension_constants.dart';

class ItemDocument extends StatelessWidget {
  ItemDocument({
    Key? key,
    this.title,
    this.total,
    required this.img,
  }) : super(key: key);
  String? title;
  int? total;
  String img;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 3,
      height: 175,
      margin: EdgeInsets.only(left: kMediumpading),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 113),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, top: 15),
              child: Text(
                title!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5, left: 10),
              child: Text(
                total.toString(),
                style: TextStyle(color: ColorPalette.itemTextsp, fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
