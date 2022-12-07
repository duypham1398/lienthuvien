import 'package:flutter/material.dart';
import 'package:ltv/widget/appbar/search.dart';

import '../../constants/dismension_constants.dart';
import '../button_widget.dart';

class SearchWithButton extends StatelessWidget {
  const SearchWithButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kMediumpading),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Search(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: ButtonWidget(
                height: 32,
                title: 'Nâng cao',
                ontap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
