import 'package:flutter/material.dart';
import 'package:ltv/widget/appbar/search.dart';

import '../constants/dismension_constants.dart';

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
          child: Column(),
        )
      ],
    );
  }
}
