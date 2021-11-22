import 'package:flutter/material.dart';
import 'package:renter/components/player_item.dart';
import 'package:renter/models/player.dart';
import 'package:renter/size_config.dart';

class PlayerList extends StatefulWidget {
  const PlayerList({
    Key key,
    this.title
  }) : super(key: key);

  final String title;

  @override
  _PlayerListState createState() => _PlayerListState();
}

class _PlayerListState extends State<PlayerList> {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(getProportionateScreenHeight(20)),
      scrollDirection: Axis.vertical,
      itemCount: players.length,
      separatorBuilder: (BuildContext context, int index) => SizedBox(height: getProportionateScreenHeight(20),),
      itemBuilder: (BuildContext context, int index) {
        return PlayerItem(
            player: players[index], 
            index: index + 1, 
            type: widget.title
        );
      },
    );
  }
}
