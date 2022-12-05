import 'package:flutter/material.dart';
import 'package:lienthuvien/constants/color_constants.dart';

import '../constants/asset_helper.dart';

class ItemNews extends StatelessWidget {
  ItemNews({Key? key, required this.postDate, this.titleItem})
      : super(key: key);
  String? postDate;
  String? titleItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(AssetHelper.imgDoc3x),
            width: 113,
            height: 113,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Ngày đăng: $postDate',
                    style:
                        TextStyle(color: ColorPalette.itemTextsp, fontSize: 10),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  child: Text(
                    titleItem!,
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorPalette.titleText,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
