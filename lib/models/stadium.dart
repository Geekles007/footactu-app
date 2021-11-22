import 'package:renter/models/match.dart';

class Stadium {
  final int id;
  final String name;
  final String description;
  final String location;
  final int place_number;
  final String image;
  final List<Match> matches;

  Stadium(this.id, this.name, this.description, this.location, this.place_number, this.image, this.matches);
}
