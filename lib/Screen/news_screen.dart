import 'package:flutter/material.dart';

import '../constants/dismension_constants.dart';
import '../widget/appbar/search.dart';
import '../widget/item_news.dart';

class News_Screen extends StatefulWidget {
  const News_Screen({Key? key}) : super(key: key);

  @override
  State<News_Screen> createState() => _News_ScreenState();
}

class _News_ScreenState extends State<News_Screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Search(),
              SizedBox(height: kMediumpading),
            ],
          ),
        ),
        Expanded(
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
        )))
      ],
    );
  }
}
