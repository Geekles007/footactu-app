import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:renter/components/match_card.dart';
import 'package:renter/constants.dart';
import 'package:renter/controllers/StadiumController.dart';
import 'package:renter/models/enum_type.dart';
import 'package:renter/models/match.dart';
import 'package:renter/models/team.dart';

class MatchCarousel extends StatefulWidget {

  @override
  _MatchCarouselState createState() => _MatchCarouselState();
}

class _MatchCarouselState extends State<MatchCarousel> {
  List<Match> matches = [
    Match(1, null, 0, null, 0, null, DateTime.now(), false)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        children: <Widget>[
          CarouselSlider(
              options: defaultCarouselOptions,
              // items: [
              //   MatchCard(match: null, type: Type.DEFAULT,)
              // ]
            items: (matches == null ? [] : matches).map((item) => MatchCard(match: item)).toList(),
          )
        ],
      ),
    );
  }
}