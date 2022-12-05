import 'package:flutter/material.dart';
import 'package:ltv/constants/asset_helper.dart';
import 'package:ltv/constants/dismension_constants.dart';
import 'package:ltv/widget/item_document.dart';

import '../constants/color_constants.dart';
import '../widget/appbar/search.dart';
import '../widget/appbar/title_with_logo.dart';
import '../widget/item_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            Search(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 22, left: kMediumpading, bottom: 20),
              child: Text(
                'Danh mục tài liệu',
                style: TextStyle(fontSize: 16, color: ColorPalette.whiteText),
              ),
            ),
            SizedBox(height: 20),
            ItemDocument(
              width: 130,
              height: 175,
              title: 'Sách',
              total: 7032,
              img: AssetHelper.imgDoc2x,
            ),
            SizedBox(height: 35),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'đợi menu =))',
                style: TextStyle(
                  fontSize: 18,
                  color: ColorPalette.whiteText,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  ItemNews(
                    postDate: '12/2/2022',
                    titleItem: 'Đoàn thư viện Việt Nam tham dự Phiên họp thứ 2',
                  ),
                  ItemNews(
                    postDate: '12/2/2022',
                    titleItem: 'Đoàn thư viện Việt Nam tham dự Phiên họp thứ 2',
                  ),
                  ItemNews(
                    postDate: '12/2/2022',
                    titleItem: 'Đoàn thư viện Việt Nam tham dự Phiên họp thứ 2',
                  ),
                  ItemNews(
                    postDate: '12/2/2022',
                    titleItem: 'Đoàn thư viện Việt Nam tham dự Phiên họp thứ 2',
                  ),
                  ItemNews(
                    postDate: '12/2/2022',
                    titleItem: 'Đoàn thư viện Việt Nam tham dự Phiên họp thứ 2',
                  ),
                  ItemNews(
                    postDate: '12/2/2022',
                    titleItem: 'Đoàn thư viện Việt Nam tham dự Phiên họp thứ 2',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
