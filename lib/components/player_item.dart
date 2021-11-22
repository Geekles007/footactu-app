import 'package:flutter/material.dart';
import 'package:renter/models/player.dart';
import 'package:renter/screens/player_details/player_details_screen.dart';
import 'package:renter/size_config.dart';
import 'package:renter/constants.dart';

class PlayerItem extends StatelessWidget {
  final Player player;
  final int index;
  final String type;

  const PlayerItem({
    Key key,
    @required this.player,
    this.index,
    this.type
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PlayerDetailsScreen(player: player,)),
        );
      },
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
        ),
        height: getProportionateScreenHeight(120),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: getProportionateScreenHeight(120),
              height: getProportionateScreenHeight(120),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(player.image),
                      fit: BoxFit.cover,
                      alignment: Alignment.center
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 5,
                    left: 5,
                    child: Container(
                        width: getProportionateScreenHeight(35),
                        height: getProportionateScreenHeight(35),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage((player.team == null ? "assets/images/no_image.png" : player.team.flag)),
                                fit: BoxFit.cover,
                                alignment: Alignment.center
                            ),
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: getProportionateScreenWidth(10)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      player.name,
                      style: TextStyle(
                          color: kTextColor,
                          fontSize: getProportionateScreenWidth(28),
                          fontWeight: FontWeight.w700
                      )
                  ),
                  buildWidget(type: type),
                ],
              ),
            ),
            DisplayIndex(
              index: index
            )
          ],
        ),
      ),
    );
  }

  Widget buildWidget({String type}) {
    Widget child;
    if(type == "Cards") {
      child = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "${player.redCards} red cards",
              style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w700
              )
          ),
          Text(
              "${player.yellowCards} yellow cards",
              style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w700
              )
          )
        ],
      );
    } else if(type == "Assists") {
      child = Text(
          "${player.assists} $type",
          style: TextStyle(
              color: kSecondaryColor,
              fontSize: getProportionateScreenWidth(15),
              fontWeight: FontWeight.w700
          )
      );
    } else {
      child = Text(
          "${player.goals} $type",
          style: TextStyle(
              color: kSecondaryColor,
              fontSize: getProportionateScreenWidth(15),
              fontWeight: FontWeight.w700
          )
      );
    }
    return child;
  }

  Positioned DisplayIndex({int index = 0}) {
    Widget child;
    if(index > 0) {
      child = Positioned(
        bottom: 0,
        right: 0,
        child: Text(
            index.toString(),
            style: TextStyle(
                fontSize: getProportionateScreenWidth(50),
                fontWeight: FontWeight.bold,
                color: kTextColor.withOpacity(0.2)
            )
        ),
      );
    }
    return child;
  }
}