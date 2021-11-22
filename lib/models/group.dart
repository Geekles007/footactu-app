import 'package:renter/models/team.dart';

class Group {
  final int id;
  final String name;
  final List<Team> teams;

  Group(this.id, this.name, this.teams);
}