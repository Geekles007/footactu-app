import 'package:flutter/material.dart';
import 'package:renter/components/team_list.dart';
import 'package:renter/constants.dart';
import 'package:renter/size_config.dart';

class TeamsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: TeamList(),
    );
  }
}


