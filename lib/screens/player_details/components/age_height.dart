import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/player.dart';
import 'package:renter/size_config.dart';

class AgeAndHeight extends StatelessWidget {
  const AgeAndHeight({
    Key key,
    @required this.player,
  }) : super(key: key);

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildInfo(
            number: player.age,
            title: "Age"
          ),
          buildInfo(
              number: player.height,
              title: "Height"
          ),
        ],
      ),
    );
  }

  Container buildInfo({number = 0, String title}) {
    return Container(
            width: SizeConfig.screenWidth * 0.4,
            height: getProportionateScreenHeight(120),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 50,
                      color: Color(0xFF12153D).withOpacity(0.2)
                  )
                ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    title,
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20
                    )
                ),
                Text(
                    "$number",
                    style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 40
                    )
                )
              ],
            )
        );
  }
}