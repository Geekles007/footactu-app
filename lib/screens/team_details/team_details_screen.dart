import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/team.dart';
import 'package:renter/screens/team_details/components/body.dart';
import 'package:renter/controllers/TeamDetailsController.dart';
import 'package:renter/screens/team_details/components/match_list_tab.dart';

class TeamDetailsScreen extends StatelessWidget {
  final Team team;

  const TeamDetailsScreen({Key key, this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: teamTabsCup.length,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: kPrimaryColor,
            title: Text(team.name, style: TextStyle(fontSize: 16.0)),
            bottom: PreferredSize(
                child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.white.withOpacity(0.3),
                  indicatorColor: Colors.white,
                  tabs: teamTabsCup,
                ),
                preferredSize: Size.fromHeight(30.0)),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.filter_list, color: Colors.white),
                  onPressed: () {}
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Body(team: team),
              MatchListTab(matches: team.matches,),
            ],
          )
      ),
    );
  }
}
