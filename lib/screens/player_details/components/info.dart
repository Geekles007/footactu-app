import 'package:flutter/material.dart';
import 'package:renter/constants.dart';

class Info extends StatelessWidget {
  const Info({
    Key key,
    @required this.number,
    @required this.title
  }) : super(key: key);

  final int number;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: TextStyle(
                  color: Colors.black
              ),
              children: [
                TextSpan(
                    text: "$number\n",
                    style: TextStyle(
                        fontSize: 30,
                        color: kTextColor
                    )
                ),
                TextSpan(
                    text: title,
                    style: TextStyle(color: kSecondaryColor, fontWeight: FontWeight.bold)
                )
              ]
          ),
        )
      ],
    );
  }
}