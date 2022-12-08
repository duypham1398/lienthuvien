import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ltv/constants/asset_helper.dart';
import 'package:ltv/constants/color_constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: ColorPalette.titleText),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Center(
                child: SvgPicture.asset(AssetHelper.imgHeaderDrawer),
              ),
            ),
            ListTile(
              leading: TextButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset(AssetHelper.iconGioithieu),
                label: Text(
                  'Giới thiệu',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 25),
              title: Text(
                'Giới thiệu chung',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(
                color: Colors.white,
                height: 1,
                thickness: 1.3,
              ),
            ),
            ListTile(
              title: Text(
                'Giới thiệu chung',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: TextButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset(AssetHelper.iconFolder),
                label: Text(
                  'Nghiệp vụ thư viện',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: TextButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset(AssetHelper.iconSMS),
                label: Text(
                  'Liên hệ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
