import 'package:flutter/material.dart';

import '../../constants/asset_helper.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    Key? key,
    required this.child,
    required this.title,
  }) : super(key: key);

  final Widget child;
  final Widget title;
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
            Container(
              child: title,
            ),
            Expanded(
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
