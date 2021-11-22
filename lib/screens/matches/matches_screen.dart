import 'package:flutter/material.dart';
import 'package:renter/components/match_card.dart';
import 'package:renter/components/title_and_view_more.dart';
import 'package:renter/models/enum_type.dart';
import 'package:renter/models/match.dart';
import 'package:renter/screens/matches/components/match_carousel.dart';
import 'package:renter/size_config.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(20)),
          TitleAndViewMore(
            title: "Today",
            more: true,
            press: () {},
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          MatchCarousel(),
          SizedBox(height: getProportionateScreenHeight(20)),
          TitleAndViewMore(
            title: "Yesterday",
            more: true,
            press: () {},
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
            child: Column(
              children: [1,2,3].map((item) => MatchCard(match: Match(1, null, 0, null, 0, null, DateTime.now(), true), type: Type.SMALL)).toList(),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          TitleAndViewMore(
            title: "This week",
            more: true,
            press: () {},
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
            child: Column(
              children: [1,2,3].map((item) => MatchCard(match: Match(1, null, 0, null, 0, null, DateTime.now(), false), type: Type.SMALL)).toList(),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          TitleAndViewMore(
            title: "Others",
            more: true,
            press: () {},
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
            child: Column(
              children: [1,2,3].map((item) => MatchCard(match: Match(1, null, 0, null, 0, null, DateTime.now(), false), type: Type.SMALL)).toList(),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
        ],
      ),
    );
  }
}



