import 'package:flutter/material.dart';

import '../Repository/news_repository.dart';
import '../constants/dismension_constants.dart';
import '../widget/appbar/search.dart';
import '../widget/item_news.dart';

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
            child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: FutureBuilder<List<dynamic>>(
            future: getListNews(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasData && snapshot.data != null) {
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: ItemNews(
                        postDate: snapshot.data![index]['DateCreated'],
                        titleItem: snapshot.data![index]['Title'],
                      ),
                    );
                  },
                );
              }
              // return Center(child: CircularProgressIndicator());
              return Container(
                child: Text("No Data"),
              );
            },
          ),
        ))
      ],
    );
  }
}
