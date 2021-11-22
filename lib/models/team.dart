import 'package:renter/models/match.dart';
import 'package:renter/models/player.dart';

class Team {
  final int id;
  final String name;
  final String initial;
  final String flag;
  int mp = 0;
  int pts = 0;
  int middle = 0;
  final List<Player> players;
  final List<Match> matches;

  Team(this.id, this.name, this.initial, this.flag, int mp, int pts, int middle, this.players, this.matches) : mp = mp, pts = pts, middle = middle;
}

List<Team> teams = [
  Team(1, "Panthère du Ndé", "PDN", "assets/images/flag_cameroon.png", 0, 0, 0, [
    Player(1, "Eto'o", 9,
        "Avant centre",
        "assets/images/etoo.jpg", 20, 1.85, 10, 3, 20, 1, 0,
        "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's "
            "standard dummy text ever since the 1500s, when an unknown "
            "printer took a galley of type and scrambled it to make a "
            "type specimen book.", null
    )
  ], [
    Match(1, null, 0, null, 0, null, DateTime.now(), false)
  ]),
  Team(2, "Coton sport", "CSD", "assets/images/flag_civoire.png", 1, 2, 4, [
    Player(1, "Eto'o", 9,
        "Avant centre",
        "assets/images/etoo.jpg", 20, 1.85, 10, 3, 20, 1, 0,
        "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's "
            "standard dummy text ever since the 1500s, when an unknown "
            "printer took a galley of type and scrambled it to make a "
            "type specimen book.", null
    )
  ], [
    Match(1, null, 0, null, 3, null, DateTime.now(), false)
  ]),
];