import 'package:flutter/material.dart';
import 'package:renter/models/player.dart';
import 'package:renter/screens/player_details/components/info.dart';

class BackdropAndInfos extends StatelessWidget {
  const BackdropAndInfos({
    Key key,
    @required this.size,
    @required this.player,
  }) : super(key: key);

  final Size size;
  final Player player;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(player.image) 
                )
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 100,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 50,
                        color: Color(0xFF12153D).withOpacity(0.2)
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)
                  ),
                  color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Info(number: player.assists, title: "Assists"),
                  Info(number: player.goals, title: "Goals"),
                  Info(number: player.matches, title: "Matches"),
                ],
              ),
            ),
          ),
          SafeArea(child: BackButton(),)
        ],
      ),
    );
  }
}