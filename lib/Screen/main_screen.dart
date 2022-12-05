import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lienthuvien/Screen/home_screen.dart';
import 'package:lienthuvien/Screen/legal_documents_screen.dart';
import 'package:lienthuvien/constants/asset_helper.dart';
import 'package:lienthuvien/constants/color_constants.dart';

import 'news_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final screen = [HomeScreen(), Legal_Documents_Screen(), News_Screen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: SizedBox(
            height: 56,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtonBar(
                    text: 'Home',
                    icon: AssetHelper.iconHome,
                    selected: _selectedIndex == 0,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                  ),
                  IconButtonBar(
                    text: 'Văn bản pháp quy',
                    icon: AssetHelper.iconLegalDocument,
                    selected: _selectedIndex == 1,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                  ),
                  IconButtonBar(
                    text: 'Tin tức',
                    icon: AssetHelper.iconNews,
                    selected: _selectedIndex == 2,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IconButtonBar extends StatelessWidget {
  IconButtonBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.onPressed,
      required this.selected})
      : super(key: key);
  final String text;
  final String icon;
  final bool selected;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            icon,
            // size: 25,
            color:
                selected ? ColorPalette.searchColor : ColorPalette.unSelected,
          ),
          color: ColorPalette.searchColor,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            height: .1,
            color:
                selected ? ColorPalette.searchColor : ColorPalette.unSelected,
          ),
        )
      ],
    );
  }
}
