import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ltv/constants/asset_helper.dart';
import 'package:ltv/constants/dismension_constants.dart';

class TitleWithLogo extends StatelessWidget {
  const TitleWithLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, left: kMediumpading),
      child: Stack(
        children: [
          Container(child: SvgPicture.asset(AssetHelper.iconMenu)),
          Container(
              alignment: Alignment.center,
              child: Image.asset(AssetHelper.title1x)),
        ],
      ),
    );
  }
}
