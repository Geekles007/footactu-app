import 'package:flutter/material.dart';
import 'package:renter/components/match_list.dart';
import 'package:renter/models/match.dart';
import 'package:renter/size_config.dart';

class MatchListTab extends StatelessWidget {
  final List<Match> matches;

  const MatchListTab({Key key, this.matches}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(getProportionateScreenHeight(20)),
        child: MatchList(matches: matches,),
      ),
    );
  }
}
