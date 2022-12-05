import 'package:flutter/material.dart';
import 'package:ltv/constants/asset_helper.dart';
import 'package:ltv/constants/color_constants.dart';
import 'package:ltv/constants/dismension_constants.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kMediumpading),
      child: TextField(
        decoration: InputDecoration(
          fillColor: ColorPalette.searchColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          hintText: ('Nhập từ khóa tìm kiếm'),
          hintStyle: TextStyle(color: ColorPalette.whiteText.withOpacity(0.76)),
          prefixIcon: Padding(
            padding: EdgeInsets.all(4),
            child: Image.asset(
              AssetHelper.iconSearch1x,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 4),
        ),
      ),
    );
  }
}
