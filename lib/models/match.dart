import 'package:renter/models/stadium.dart';
import 'package:renter/models/team.dart';

class Match {
  final int id;
  final Team team1;
  final int score1;
  final Team team2;
  final int score2;
  final Stadium stadium;
  final DateTime date;
  bool passed = false;

  Match(this.id, this.team1, this.score1, this.team2, this.score2, this.stadium, this.date, bool passed) : passed = passed;
}