import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/controllers/StadiumController.dart';
import 'package:renter/screens/stadiums/components/stadium_card.dart';
import 'package:renter/size_config.dart';

class StadiumsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stadiums.length,
      itemBuilder: (BuildContext context, int index) {
        return StadiumCard(stadium: stadiums[index]);
      },
    );
  }
}


