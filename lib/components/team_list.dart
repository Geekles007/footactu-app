import 'package:flutter/material.dart';
import 'package:renter/components/team_card.dart';
import 'package:renter/models/team.dart';

class TeamList extends StatelessWidget {
  const TeamList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 3,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.95
        ),
        itemBuilder: (BuildContext context, int index) {
          return TeamCard(team: teams[0]);
        }
    );
  }
}

