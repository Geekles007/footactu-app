import 'package:flutter/material.dart';
import 'package:renter/components/flag_button.dart';
import 'package:renter/models/team.dart';
import 'package:renter/size_config.dart';

class StandingItem extends StatelessWidget {
  const StandingItem({
    Key key,
    this.team
  }) : super(key: key);

  final Team team;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                FlagButton(
                    width: getProportionateScreenWidth(40),
                    height: getProportionateScreenWidth(40),
                    team: teams[0]
                ),
                SizedBox(width: 10,),
                Text(
                    "CMR",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                        fontSize: getProportionateScreenWidth(15)
                    )
                )
              ],
            ),
          ),
          Container(
            width: getProportionateScreenWidth(120),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                    "-",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400,
                        fontSize: getProportionateScreenWidth(15)
                    )
                ),
                Text(
                    "-",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400,
                        fontSize: getProportionateScreenWidth(15)
                    )
                ),
                Text(
                    "-",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400,
                        fontSize: getProportionateScreenWidth(15)
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}