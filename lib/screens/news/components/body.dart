import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/screens/news/components/main_news.dart';
import 'package:renter/screens/news/components/news_list.dart';
import 'package:renter/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            MainNews(),
            SizedBox(height: getProportionateScreenHeight(20)),
            NewsList()
          ],
        )
      ),
    );
  }
}



