import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ltv/constants/asset_helper.dart';
import 'package:ltv/constants/color_constants.dart';
import 'package:ltv/constants/dismension_constants.dart';

class ItemChilDocument extends StatelessWidget {
  ItemChilDocument({
    Key? key,
    required this.title,
    required this.numEye,
    required this.numLike,
    required this.content1,
    required this.content2,
    required this.label1,
    required this.label2,
  }) : super(key: key);
  final String? title;
  final int? numEye;
  final int? numLike;
  final String label1;
  final String label2;
  final String? content1;
  final String? content2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.symmetric(horizontal: kMediumpading),
      width: double.infinity,
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              title!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: ColorPalette.titleText,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              text: label1,
              style: TextStyle(
                color: ColorPalette.unSelected,
                fontSize: 12,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: content1,
                    style: TextStyle(color: ColorPalette.itemTextsp)),
                // TextSpan(text: ' world!'),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: label2,
              style: TextStyle(
                color: ColorPalette.unSelected,
                fontSize: 12,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: content2,
                    style: TextStyle(color: ColorPalette.itemTextsp)),
                // TextSpan(text: ' world!'),
              ],
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    SvgPicture.asset(AssetHelper.iconEye),
                    SizedBox(width: 8),
                    Text(
                      numEye.toString(),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    SvgPicture.asset(AssetHelper.iconLike),
                    SizedBox(width: 8),
                    Text(
                      numLike.toString(),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
