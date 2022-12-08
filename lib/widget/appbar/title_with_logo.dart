import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ltv/constants/asset_helper.dart';
import 'package:ltv/constants/dismension_constants.dart';

class TitleWithLogo extends StatelessWidget {
  TitleWithLogo({Key? key, required this.navBarKey}) : super(key: key);
  final GlobalKey<ScaffoldState> navBarKey;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: kMediumpading / 2),
      child: Stack(
        children: [
          Container(
            child: IconButton(
              padding: EdgeInsets.only(bottom: 25),
              icon: SvgPicture.asset(AssetHelper.iconMenu),
              onPressed: () {
                navBarKey.currentState?.openDrawer();
              },
            ),
          ),
          // Container(child: SvgPicture.asset(AssetHelper.iconMenu)),
          Container(
              alignment: Alignment.center,
              child: Image.asset(AssetHelper.title1x)),
        ],
      ),
    );
  }
}
