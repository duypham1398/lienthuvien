import 'package:flutter/material.dart';
import 'package:ltv/Controllers/list_document_controller.dart';
import 'package:ltv/Repository/list_document_repository.dart';
import 'package:ltv/constants/dismension_constants.dart';

import '../constants/asset_helper.dart';
import '../constants/color_constants.dart';
import '../widget/appbar/search.dart';
import '../widget/item_document.dart';
import '../widget/item_news.dart';
import 'page_baitrich.dart';
import 'page_book.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pageDanhMuc = [BaiTrichPage(), BookPage()];
  @override
  Widget build(BuildContext context) {
    var listDocumentController =
        ListDocumentController(ListDocumentRepository());
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
              child: FutureBuilder(
                future: listDocumentController.fetchListDocument(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  }
                  if (snapshot.hasData && snapshot.data != null) {
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: ItemDocument(
                            // title: snapshot['Data']['TypeBookID'],
                            // total: snapshot,
                            img: AssetHelper.imgDissertation1x,
                          ),
                        );
                      },
                    );
                  }
                  return Container(
                    child: Text("HIHI"),
                  );
                },
              ),
              // child: ListView(
              //   shrinkWrap: true,
              //   scrollDirection: Axis.horizontal,
              //   children: <Widget>[
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => BaiTrichPage(),
              //           ),
              //         );
              //       },
              //       child: ItemDocument(
              //         width: 130,
              //         height: 175,
              //         title: 'Bài trích',
              //         total: 7032,
              //         img: AssetHelper.imgDissertation1x,
              //       ),
              //     ),
              //   ],
              // ),
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
