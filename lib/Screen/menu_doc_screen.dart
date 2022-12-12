import 'package:flutter/material.dart';
import 'package:ltv/widget/item_news.dart';

import '../constants/asset_helper.dart';
import '../constants/dismension_constants.dart';
import '../widget/appbar/search_with_button.dart';
import '../widget/appbar/title_without_logo.dart';

class MenuDocScreen extends StatelessWidget {
  const MenuDocScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetHelper.backgroundImage3x),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            TitleWithoutLogo(title: 'Test', totalDoc: 12345),
            SizedBox(height: 5),
            SearchWithButton(),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(kMediumpading),
                            topLeft: Radius.circular(kMediumpading),
                          ),
                          color: Colors.white),
                      child: Column(
                        children: [
                          // ItemChilDocument(
                          //   title: 'Bài trích',
                          //   tapChi: 'Y học thực hành',
                          //   tuKhoa:
                          //       '18F-FDG PET/CT, Bệnh hạch ác tính không Hodgkin, đáp ứng điều trị hóa chất',
                          //   numEye: 1234,
                          //   numLike: 3682,
                          // ),
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
        ),
      ),
    );
  }
}
