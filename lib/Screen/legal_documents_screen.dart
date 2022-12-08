import 'package:flutter/material.dart';
import 'package:ltv/constants/TxtStyle.dart';
import 'package:ltv/constants/color_constants.dart';

import '../constants/dismension_constants.dart';
import '../widget/appbar/search_with_button.dart';
import '../widget/item_legal_doc.dart';

class Legal_Documents_Screen extends StatefulWidget {
  const Legal_Documents_Screen({Key? key}) : super(key: key);

  @override
  State<Legal_Documents_Screen> createState() => _Legal_Documents_ScreenState();
}

class _Legal_Documents_ScreenState extends State<Legal_Documents_Screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              SearchWithButton(),
              SizedBox(height: kMediumpading),
              Container(
                width: double.infinity,
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
                      child: Text(
                        'Tải về',
                        style: TxtStyle.headingLegalDoc,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Số/Ký hiệu',
                        textAlign: TextAlign.start,
                        style: TxtStyle.headingLegalDoc,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Ngày ban hành',
                        style: TxtStyle.headingLegalDoc,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Trích yếu',
                        textAlign: TextAlign.start,
                        style: TxtStyle.headingLegalDoc,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
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
        ),
      ],
    );
  }
}
