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
    required this.tapChi,
    required this.tuKhoa,
  }) : super(key: key);
  final String? title;
  final int? numEye;
  final int? numLike;
  final String? tapChi;
  final String? tuKhoa;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: kMediumpading),
      child: Column(
        children: [
          Expanded(
            child: Text(
              title!,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ColorPalette.titleText),
            ),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: 'Tạp chí: ',
                style: TextStyle(
                  fontSize: 12,
                  color: ColorPalette.unSelected,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: tapChi,
                    style:
                        TextStyle(fontSize: 12, color: ColorPalette.itemTextsp),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: 'Từ khóa: ',
                style: TextStyle(
                  fontSize: 12,
                  color: ColorPalette.unSelected,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: tuKhoa,
                    style:
                        TextStyle(fontSize: 12, color: ColorPalette.itemTextsp),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    SvgPicture.asset(AssetHelper.iconEye),
                    SizedBox(width: 8),
                    Text(numEye.toString()),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SvgPicture.asset(AssetHelper.iconLike),
                    SizedBox(width: 8),
                    Text(numLike.toString()),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
