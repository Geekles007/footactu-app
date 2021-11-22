import 'package:flutter/material.dart';
import 'package:renter/models/player.dart';
import 'package:renter/screens/player_details/components/body.dart';

class PlayerDetailsScreen extends StatelessWidget {
  final Player player;

  const PlayerDetailsScreen({Key key, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(player: player,),
    );
  }
}

