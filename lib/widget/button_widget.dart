import 'package:flutter/material.dart';
import 'package:lienthuvien/constants/color_constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key, required this.title, this.ontap, this.verticalPadding})
      : super(key: key);

  final String title;
  final Function()? ontap;
  final double? verticalPadding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: verticalPadding!),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorPalette.buttonColor,
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(fontSize: 14, color: ColorPalette.whiteText),
        ),
      ),
    );
  }
}
