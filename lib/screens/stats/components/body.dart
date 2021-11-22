import 'package:flutter/material.dart';
import 'package:renter/screens/stats/components/player_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        PlayerList(title: "Goals",),
        PlayerList(title: "Assists"),
        PlayerList(title: "Cards")
      ],
    );
  }
}


