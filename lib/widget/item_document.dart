import 'package:flutter/material.dart';
import 'package:lienthuvien/constants/asset_helper.dart';
import 'package:lienthuvien/constants/color_constants.dart';
import 'package:lienthuvien/constants/dismension_constants.dart';

class ItemDocument extends StatelessWidget {
  ItemDocument(
      {Key? key,
      required this.width,
      this.height,
      this.title,
      this.total,
      this.img})
      : super(key: key);
  double? width;
  double? height;
  String? title;
  int? total;
  String? img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(left: kMediumpading),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetHelper.imgDoc2x), fit: BoxFit.cover),
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
