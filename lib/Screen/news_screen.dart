import 'package:flutter/material.dart';
import 'package:ltv/widget/appbar/appbar_container.dart';

import '../constants/dismension_constants.dart';
import '../widget/appbar/search.dart';
import '../widget/appbar/search_with_button.dart';
import '../widget/appbar/title_with_logo.dart';
import '../widget/item_news.dart';

class News_Screen extends StatefulWidget {
  const News_Screen({Key? key}) : super(key: key);

  @override
  State<News_Screen> createState() => _News_ScreenState();
}

class _News_ScreenState extends State<News_Screen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
        title: Column(
          children: [
            SizedBox(height: 20),
            TitleWithLogo(),
            SizedBox(height: kMediumpading),
            Search(),
            SizedBox(height: kMediumpading),
          ],
        ),
        child: SingleChildScrollView(
            child: Column(
          children: [
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
                ],
              ),
            ),
          ],
        )));
  }
}
