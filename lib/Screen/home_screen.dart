import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ltv/Repository/list_document_repository.dart';
import 'package:ltv/constants/dismension_constants.dart';

import '../Repository/news_repository.dart';
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
            SizedBox(
              height: 175,
              child: FutureBuilder<List<dynamic>>(
                future: getListDocument(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasData && snapshot.data != null) {
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: ItemDocument(
                            title: snapshot.data![index]['TypeBookName'],
                            total: snapshot.data![index]['TongSo'],
                            img: AssetHelper.imgDoc1x,
                          ),
                        );
                      },
                    );
                  }
                  ;
                  // return Center(child: CircularProgressIndicator());
                  return Container(
                    child: Text("No Data"),
                  );
                },
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
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: FutureBuilder<List<dynamic>>(
              future: getListNews(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasData && snapshot.data != null) {
                  return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      var postDate = snapshot.data![index]['DateCreated'];
                      //String formatpostDate = DateFormat.yMd().format(postDate);
                      return GestureDetector(
                        onTap: () {},
                        child: ItemNews(
                          postDate: postDate,
                          titleItem: snapshot.data![index]['Title'],
                        ),
                      );
                    },
                  );
                }
                // return Center(child: CircularProgressIndicator());
                return Container(
                  child: Text("No Data"),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
