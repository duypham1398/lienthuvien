import 'package:flutter/material.dart';

//define text style right here
class TxtStyle {
  //==========Heading 1=============
  static const heading1 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 30, height: 1.2);
  static const heading1SemiBold = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 30,
  );

  //==========Heading 2=============
  static const heading2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    height: 1.2,
    decoration: TextDecoration.none,
  );

  //==========Heading văn bản pháp quy=============
  static const headingLegalDoc = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
}
