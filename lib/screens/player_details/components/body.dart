import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:renter/components/flag_button.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/player.dart';
import 'package:renter/screens/player_details/components/additional_infos.dart';
import 'package:renter/screens/player_details/components/age_height.dart';
import 'package:renter/screens/player_details/components/backdrop_and_infos.dart';
import 'package:renter/screens/player_details/components/info.dart';
import 'package:renter/size_config.dart';

class Body extends StatelessWidget {
  final Player player;

  const Body({Key key, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndInfos(size: size, player: player),
          SizedBox(height: getProportionateScreenHeight(20)),
          AdditionalInfos(player: player),
          SizedBox(height: getProportionateScreenHeight(20)),
          AgeAndHeight(player: player),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildDescription(
            description: player.description,
            title: "Biography"
          )
        ],
      ),
    );
  }

  Widget buildDescription({String description, String title}) {
    Widget child;
    if(description != null) {
      child = Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: getProportionateScreenHeight(19)
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Text("$description")
          ],
        ),
      );
    } else {
      child = SizedBox(height: getProportionateScreenHeight(20));
    }
    return child;
  }
}








