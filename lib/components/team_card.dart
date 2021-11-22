import 'package:flutter/material.dart';
import 'package:renter/components/flag_button.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/team.dart';
import 'package:renter/size_config.dart';

class TeamCard extends StatelessWidget {
  const TeamCard({
    Key key,
    this.team
  }) : super(key: key);

  final Team team;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FlagButton(
            width: getProportionateScreenWidth(150),
            height: getProportionateScreenHeight(160),
            team: team
          ),
          SizedBox(height: getProportionateScreenHeight(5)),
          Text(
              team.name,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w600
              )
          )
        ],
      ),
    );
  }
}