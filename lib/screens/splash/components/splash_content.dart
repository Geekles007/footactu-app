import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key, this.text, this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "Renter",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold
          )
        ),
        Text(
          text
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(280),
        )
      ],
    );
  }
}