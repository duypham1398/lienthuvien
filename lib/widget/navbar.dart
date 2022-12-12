import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ltv/constants/asset_helper.dart';
import 'package:ltv/constants/color_constants.dart';
import 'package:ltv/widget/button_widget.dart';

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
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
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
              minVerticalPadding: 0,
              contentPadding: EdgeInsets.only(left: 25),
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
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
              minLeadingWidth: 0,
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
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
            // Expanded(
            //   child: ListView.builder(
            //       padding: EdgeInsets.symmetric(horizontal: 25),
            //       itemCount: ,
            //       itemBuilder: itemBuilder),
            // ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(
                color: Colors.white,
                height: 1,
                thickness: 1.3,
              ),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
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
            SizedBox(height: 60),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: ButtonWidget(
                height: 44,
                title: 'Đăng nhập',
              ),
            ),
            SizedBox(height: 12),
            Center(
              child: Text(
                'Đăng ký',
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(height: 60),
            Center(
              child: Text(
                'Liên thư viện ngành y v1.0',
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
