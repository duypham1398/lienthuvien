import 'package:flutter/material.dart';
import 'package:ltv/widget/appbar/appbar_container.dart';

import '../constants/dismension_constants.dart';
import '../widget/appbar/search_with_button.dart';
import '../widget/appbar/title_with_logo.dart';

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
          SearchWithButton(),
          SizedBox(height: kMediumpading),
        ],
      ),
      child: Column(),
    );
  }
}
