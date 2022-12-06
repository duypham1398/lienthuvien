import 'package:flutter/material.dart';
import 'package:ltv/constants/color_constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.title, this.ontap, this.height})
      : super(key: key);

  final String title;
  final Function()? ontap;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorPalette.buttonColor,
        ),
        alignment: Alignment.center,
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 14, color: ColorPalette.whiteText),
          ),
        ),
      ),
    );
  }
}
