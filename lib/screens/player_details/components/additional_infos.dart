import 'package:flutter/material.dart';
import 'package:renter/components/flag_button.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/player.dart';
import 'package:renter/size_config.dart';

class AdditionalInfos extends StatelessWidget {
  const AdditionalInfos({
    Key key,
    @required this.player,
  }) : super(key: key);

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        player.name,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 28
                        ),
                      ),
                      SizedBox(width: getProportionateScreenHeight(10)),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kSecondaryColor
                        ),
                        child: Center(
                          child: Text(
                            "${player.number}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: kDefaultPadding / 4,),
                  Text(
                    "${player.position}",
                    style: TextStyle(color: kTextColor, fontSize: 16),
                  )
                ],
              ),
            ),
            FlagButton(team: player.team)
          ],
        )
    );
  }
}