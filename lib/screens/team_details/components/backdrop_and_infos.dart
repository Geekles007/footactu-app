import 'package:flutter/material.dart';
import 'package:renter/models/team.dart';
import 'package:renter/screens/player_details/components/info.dart';
import 'package:renter/size_config.dart';

class BackdropAndInfos extends StatelessWidget {
  const BackdropAndInfos({
    Key key,
    @required this.team,
  }) : super(key: key);

  final Team team;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight * 0.3,
      child: Stack(
        children: [
          Container(
            height: SizeConfig.screenHeight * 0.3 - 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(team.flag)
                )
            ),
          ),
          Positioned.fill(
              bottom: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  width: SizeConfig.screenWidth * 0.85,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 50,
                            color: Color(0xFF12153D).withOpacity(0.2)
                        )
                      ],
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Info(number: team.mp, title: "Assists"),
                      Info(number: team.middle, title: "Goals"),
                      Info(number: team.pts, title: "Matches"),
                    ],
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
