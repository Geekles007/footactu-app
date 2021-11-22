import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:renter/components/flag_button.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/enum_type.dart';
import 'package:renter/models/match.dart';
import 'package:renter/models/player.dart';
import 'package:renter/models/team.dart';
import 'package:renter/size_config.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({
    Key key,
    @required this.match, this.type,
  }) : super(key: key);

  final Match match;
  final Type type;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kPrimaryLightColor,
          border: Border.all(
              width: 6,
              color: Colors.white.withOpacity(.3)
          )
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(10), horizontal: getProportionateScreenHeight(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildStadium(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlagButton(team: Team(1, "Cameroon", 'CMR', 'assets/images/flag_cameroon.png', 2, 3, 4, [
                      Player(1, "Eto'o", 9,
                          "Avant centre",
                          "assets/images/etoo.jpg", 20, 1.85, 10, 3, 20, 1, 0,
                          "Lorem Ipsum is simply dummy text of the printing and "
                              "typesetting industry. Lorem Ipsum has been the industry's "
                              "standard dummy text ever since the 1500s, when an unknown "
                              "printer took a galley of type and scrambled it to make a "
                              "type specimen book.", null
                      )
                    ], [
                      Match(1, null, 0, null, 0, null, DateTime.now(), false)
                    ])),
                    SizedBox(height: getProportionateScreenHeight(10)),
                    Text(
                        "CMR",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        )
                    )
                  ],
                ),
                buildRScore(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlagButton(team: Team(1, "Cote d'ivoire", 'CDI', 'assets/images/flag_civoire.png', 2, 3, 1, [
                      Player(1, "Eto'o", 9,
                          "Avant centre",
                          "assets/images/etoo.jpg", 20, 1.85, 10, 3, 20, 1, 0,
                          "Lorem Ipsum is simply dummy text of the printing and "
                              "typesetting industry. Lorem Ipsum has been the industry's "
                              "standard dummy text ever since the 1500s, when an unknown "
                              "printer took a galley of type and scrambled it to make a "
                              "type specimen book.", null
                      )
                    ], [
                      Match(1, null, 0, null, 0, null, DateTime.now(), false)
                    ])),
                    SizedBox(height: getProportionateScreenHeight(10)),
                    Text(
                        "CDI",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        )
                    )
                  ],
                )
              ],
            ),
            buildGroup()
          ],
        ),
      ),
    );
  }

  RichText buildRScore() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          fontSize: 25
        ),
        children: [
          TextSpan(
            text: match != null && match.passed ? "${match.score1}" : "-"
          ),
          TextSpan(
            text: " : "
          ),
          TextSpan(
            text: match != null && match.passed ? "${match.score2}" : "-"
          ),
          buildHour()
        ]
      ),
    );
  }

  TextSpan buildHour() {
    if(!match.passed) {
      return TextSpan(
          text: "\n17:30",
          style: TextStyle(
              color: kSecondaryColor
          )
      );
    }
    return TextSpan(text: "");
  }

  Widget buildGroup() {
    if(type == Type.SMALL && !match.passed){
      return Column(
        children: [
          Text(
            "${match.date.year}-${match.date.month}-${match.date.day}",
            style: TextStyle(
              color: Colors.white,

            )
          )
        ],
      );
    } else if(type == Type.SMALL && match.passed) {
      return InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "Details",
                style: TextStyle(
                    color: Colors.white
                )
            ),
            Icon(Icons.chevron_right, color: Colors.white)
          ],
        ),
      );
    }
    return Column(
      children: [
        Text(
            "Group A"
        )
      ],
    );
  }

  Widget buildStadium() {
    if(type != Type.SMALL) {
      return Text(
          "Olembé Stadium",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white
          )
      );
    }
    return Container();
  }
}