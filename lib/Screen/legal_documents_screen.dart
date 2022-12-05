import 'package:flutter/material.dart';
import 'package:ltv/widget/button_widget.dart';

import '../constants/asset_helper.dart';
import '../constants/dismension_constants.dart';
import '../widget/appbar/search.dart';
import '../widget/appbar/title_with_logo.dart';

class Legal_Documents_Screen extends StatefulWidget {
  const Legal_Documents_Screen({Key? key}) : super(key: key);

  @override
  State<Legal_Documents_Screen> createState() => _Legal_Documents_ScreenState();
}

class _Legal_Documents_ScreenState extends State<Legal_Documents_Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetHelper.backgroundImage3x),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TitleWithLogo(),
            SizedBox(height: kMediumpading),
            Row(
              children: [
                Expanded(
                  child: Search(),
                ),
                // Expanded(
                //   child: ButtonWidget(
                //     title: 'Nâng cao',
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
