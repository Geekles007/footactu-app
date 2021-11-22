import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/player.dart';
import 'package:renter/screens/player_details/player_details_screen.dart';
import 'package:renter/size_config.dart';

class PlayerCard extends StatelessWidget {
  final Player player;

  const PlayerCard({Key key, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PlayerDetailsScreen(player: player,)),
        );
      },
      child: Container(
        width: double.infinity,
        height: getProportionateScreenWidth(80),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.05)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        "1",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: getProportionateScreenWidth(17)
                        )
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: getProportionateScreenWidth(60),
                      height: getProportionateScreenWidth(60),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(player != null ? player.image : "assets/images/no_image.jpg"),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: kPrimaryColor.withOpacity(.2),
                              width: 6.0
                          )
                      ),
                    ),
                    Text(
                        "Lee",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: getProportionateScreenWidth(17)
                        )
                    )
                  ],
                ),
              ),
              Text(
                  "12",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: getProportionateScreenWidth(17)
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
