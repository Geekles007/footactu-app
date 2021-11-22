import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/team.dart';
import 'package:renter/screens/team_details/components/backdrop_and_infos.dart';
import 'package:renter/screens/team_details/components/player_card.dart';
import 'package:renter/size_config.dart';

class Body extends StatelessWidget {
  final Team team;

  const Body({Key key, this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BackdropAndInfos(team: team),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Players",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: getProportionateScreenWidth(17)
                    )
                  ),
                  Text(
                      "Pts",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: getProportionateScreenWidth(17)
                      )
                  )
                ],
              ),
            ),
            Column(
              children: team.players.map((item) => PlayerCard(player: item)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

