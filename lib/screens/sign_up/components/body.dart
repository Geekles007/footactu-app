import 'package:flutter/material.dart';
import 'package:renter/components/social_card.dart';
import 'package:renter/constants.dart';
import 'package:renter/screens/sign_up/components/sign_up_form.dart';
import 'package:renter/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: SizeConfig.screenHeight * 0.02,),
            Text(
              "Register Account",
              style: headingStyle
            ),
            Text(
              "Complete your details or continue \nwith social media.",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.07,), 
            SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.07,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialCard(
                  icon: "assets/icons/001-google.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/003-facebook.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/002-apple.svg",
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20),),
            Text(
              "By Conitnuing you confirm that you agree \n with our term and conditions",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getProportionateScreenHeight(20),)
          ],
        ),
      ),
    );
  }
}