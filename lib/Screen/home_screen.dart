import 'package:flutter/material.dart';
import 'package:ltv/Screen/menu_doc_screen.dart';
import 'package:ltv/constants/dismension_constants.dart';

import '../constants/asset_helper.dart';
import '../constants/color_constants.dart';
import '../widget/appbar/search.dart';
import '../widget/item_document.dart';
import '../widget/item_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Search(),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: kMediumpading, bottom: 20),
              child: Text(
                'Danh mục tài liệu',
                style: TextStyle(fontSize: 16, color: ColorPalette.whiteText),
              ),
            ),
            // SizedBox(height: 20),
            SizedBox(
              height: 175,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuDocScreen(),
                        ),
                      );
                    },
                    child: ItemDocument(
                      width: 130,
                      height: 175,
                      title: 'Bài trích',
                      total: 7032,
                      img: AssetHelper.imgDissertation1x,
                    ),
                  ),
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => QuotesScreen(),
                    //     ),
                    //   );
                    // },
                    child: ItemDocument(
                      width: 130,
                      height: 175,
                      title: 'Sách',
                      total: 7032,
                      img: AssetHelper.imgDissertation1x,
                    ),
                  ),
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => QuotesScreen(),
                    //     ),
                    //   );
                    // },
                    child: ItemDocument(
                      width: 130,
                      height: 175,
                      title: 'Luận văn',
                      total: 7032,
                      img: AssetHelper.imgDoc3x,
                    ),
                  ),
                ],
              ),
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
            SizedBox(height: 20),
          ],
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
                        titleItem:
                            'Đoàn thư viện Việt Nam tham dự Phiên họp thứ 2',
                      ),
                      ItemNews(
                        postDate: '12/2/2022',
                        titleItem:
                            'Đoàn thư viện Việt Nam tham dự Phiên họp thứ 2',
                      ),
                      ItemNews(
                        postDate: '12/2/2022',
                        titleItem:
                            'Đoàn thư viện Việt Nam tham dự Phiên họp thứ 2',
                      ),
                      ItemNews(
                        postDate: '12/2/2022',
                        titleItem:
                            'Đoàn thư viện Việt Nam tham dự Phiên họp thứ 2',
                      ),
                      ItemNews(
                        postDate: '12/2/2022',
                        titleItem:
                            'Đoàn thư viện Việt Nam tham dự Phiên họp thứ 2',
                      ),
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
