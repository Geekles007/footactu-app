import 'package:flutter/material.dart';
import 'package:renter/components/match_card.dart';
import 'package:renter/models/enum_type.dart';
import 'package:renter/models/match.dart';

class MatchList extends StatelessWidget {
  final List<Match> matches;

  const MatchList({Key key, this.matches}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: matches.length,
      itemBuilder: (BuildContext context, int index) {
        return MatchCard(match: matches[index], type: Type.SMALL,);
      }
    );
  }
}
