import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/team.dart';
import 'package:renter/screens/team_details/team_details_screen.dart';

class FlagButton extends StatelessWidget {
  final Team team;
  final double width;
  final double height;

  const FlagButton({Key key, this.team, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: this.height != null ? this.height : 64,
      width: this.width != null ? this.width : 64,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TeamDetailsScreen(team: team,)),
          );
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(team != null ? team.flag : "assets/images/no_image.png"),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  style: BorderStyle.solid,
                  color: kPrimaryColor.withOpacity(.2),
                  width: 6.0
              )
          ),
        ),
      ),
    );
  }
}
