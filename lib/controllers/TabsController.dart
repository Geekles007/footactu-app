import 'package:flutter/material.dart';
import 'package:renter/screens/matches/matches_screen.dart';
import 'package:renter/screens/stadiums/stadiums_screen.dart';
import 'package:renter/screens/standing/standing_screen.dart';
import 'package:renter/screens/teams/teams_screen.dart';

List<Widget> tabsCup = [
  Tab(
    child: Text('Matches'),
  ),
  Tab(
    child: Text('Teams'),
  ),
  Tab(
    child: Text('Standings'),
  ),
  Tab(
    child: Text('Stadiums'),
  ),
];

List<Widget> tabsCupView = <Widget>[
  MatchesScreen(),
  TeamsScreen(),
  StandingScreen(),
  StadiumsScreen()
];