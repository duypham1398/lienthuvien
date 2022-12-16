import 'package:flutter/material.dart';

import '../constants/asset_helper.dart';
import '../constants/dismension_constants.dart';
import '../widget/appbar/search_with_button.dart';
import '../widget/appbar/title_without_logo.dart';
import '../widget/item_child_document.dart';

class BaiTrichPage extends StatelessWidget {
  const BaiTrichPage({Key? key}) : super(key: key);

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
            TitleWithoutLogo(title: 'Bài trích', totalDoc: 12345),
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
                          ItemChilDocument(
                            title: '"Cantou" et long séjour hospitalier',
                            label1: 'Tạp chí: ',
                            content1: 'Y học thực hành',
                            label2: 'Từ khóa: ',
                            content2:
                                '18F-FDG PET/CT, Bệnh hạch ác tính không Hodgkin, đáp ứng điều trị hóa chất',
                            numEye: 1234,
                            numLike: 3682,
                          ),
                          ItemChilDocument(
                            title: '"Cantou" et long séjour hospitalier',
                            label1: 'Tác giả',
                            content1: 'Y học thực hành',
                            label2: 'Chủ đề',
                            content2:
                                '18F-FDG PET/CT, Bệnh hạch ác tính không Hodgkin, đáp ứng điều trị hóa chất',
                            numEye: 1234,
                            numLike: 3682,
                          ),
                          ItemChilDocument(
                            title: '"Cantou" et long séjour hospitalier',
                            label1: 'Tác giả',
                            content1: 'Y học thực hành',
                            label2: 'Chủ đề',
                            content2:
                                '18F-FDG PET/CT, Bệnh hạch ác tính không Hodgkin, đáp ứng điều trị hóa chất',
                            numEye: 1234,
                            numLike: 3682,
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
