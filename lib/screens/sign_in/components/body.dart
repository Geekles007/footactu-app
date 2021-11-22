import 'package:flutter/material.dart';
import 'package:renter/components/no_account_text.dart';
import 'package:renter/components/social_card.dart';
import 'package:renter/screens/sign_in/components/sign_form.dart';
import 'package:renter/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: SizeConfig.screenHeight * 0.04,),
                Text(
                  "Welcome back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08,),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08,),
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
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



