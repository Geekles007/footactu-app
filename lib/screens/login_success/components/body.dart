import 'package:flutter/material.dart';
import 'package:renter/components/default_button.dart';
import 'package:renter/screens/home/home_screen.dart';
import 'package:renter/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(height: SizeConfig.screenHeight * 0.04,),
          Image.asset(
            "assets/images/illustration4.png",
            height: SizeConfig.screenHeight * 0.4,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08,),
          Text(
            "Login Success",
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(28),
              fontWeight: FontWeight.bold
            ),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Back to home",
              press: () => Navigator.popAndPushNamed(context, HomeScreen.routeName)
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}