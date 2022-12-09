import 'package:flutter/material.dart';

import '../../constants/dismension_constants.dart';

class TitleWithoutLogo extends StatelessWidget {
  const TitleWithoutLogo(
      {Key? key, required this.title, required this.totalDoc})
      : super(key: key);
  final String? title;
  final int? totalDoc;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: kMediumpading / 2, top: 40),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: IconButton(
              icon: Icon(
                Icons.chevron_left,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                title! + ' (' + totalDoc!.toString() + ')',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(''),
          )
        ],
      ),
    );
  }
}
