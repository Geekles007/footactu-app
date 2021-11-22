import 'package:flutter/material.dart';
import 'package:renter/models/news.dart';
import 'package:renter/screens/news/components/news_card.dart';
import 'package:renter/size_config.dart';

class NewsList extends StatefulWidget {
  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: SizedBox(
          child: Column(
            children: news.map((news) => NewsCard(news: news)).toList(),
          )
      ),
    );
  }
}
