import 'package:renter/models/team.dart';

class Player {
  final int id;
  final String name;
  final int number;
  final String position;
  String image = "assets/images/default.jpg";
  final int age;
  final double height;
  String description = "";
  final int assists;
  final int goals;
  final int redCards;
  final int yellowCards;
  final int matches;
  final Team team;

  Player(this.id,
      this.name,
      this.number,
      this.position,
      String image,
      this.age,
      this.height,
      this.assists,
      this.goals,
      this.matches,
      this.yellowCards,
      this.redCards,
      String description,
      this.team
  ) : image = image, description = description;
}

List<Player> players = [
  Player(1, "Eto'o", 9,
      "Avant centre",
    "assets/images/etoo.jpg", 20, 1.85, 10, 3, 20, 1, 0,
      "Lorem Ipsum is simply dummy text of the printing and "
          "typesetting industry. Lorem Ipsum has been the industry's "
          "standard dummy text ever since the 1500s, when an unknown "
          "printer took a galley of type and scrambled it to make a "
          "type specimen book.", null
  )
];