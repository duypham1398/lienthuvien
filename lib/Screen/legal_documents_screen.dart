import 'package:flutter/material.dart';
import 'package:ltv/constants/TxtStyle.dart';
import 'package:ltv/constants/color_constants.dart';
import 'package:ltv/widget/button_widget.dart';

import '../constants/asset_helper.dart';
import '../constants/dismension_constants.dart';
import '../widget/appbar/search.dart';
import '../widget/appbar/title_with_logo.dart';
import '../widget/item_legal_doc.dart';

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
            Container(
              margin: EdgeInsets.only(right: kMediumpading),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Search(),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: ButtonWidget(
                        height: 32,
                        title: 'Nâng cao',
                        ontap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: kMediumpading),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: kMediumpading),
                    decoration: BoxDecoration(
                      color: ColorPalette.bgTitleLegalDocument,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(kMediumpading),
                        topLeft: Radius.circular(kMediumpading),
                      ),
                    ),
                    height: 44,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child:
                              Text('Tải về', style: TxtStyle.headingLegalDoc),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text('Số/Ký hiệu',
                              style: TxtStyle.headingLegalDoc),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text('Ngày ban hành',
                              style: TxtStyle.headingLegalDoc),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text('Trích yếu',
                              style: TxtStyle.headingLegalDoc),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ItemLegalDoc(
                      kyhieu: '211/QĐ-BTTTT',
                      datebh: '27/2/2017',
                      trichyeu: '211-QD-Thuat...',
                    ),
                  ),
                  // Container(
                  // child: ItemLegalDoc(),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
